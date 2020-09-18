#include "test-subject.h"

/* Private structure definition. */
typedef struct {
  gchar *string;
} TestSubjectPrivate;

G_DEFINE_TYPE_WITH_PRIVATE(TestSubject, test_subject, G_TYPE_OBJECT)

typedef enum {
  PROP_STRING = 1,
  N_PROPERTIES
} TestSubjectProperty;

static GParamSpec *obj_properties[N_PROPERTIES] = { NULL, };

static void test_subject_dispose(GObject *gobject) {
  // TestSubjectPrivate *priv = test_subject_get_instance_private(TEST_SUBJECT(gobject));

  G_OBJECT_CLASS(test_subject_parent_class)->dispose(gobject);
}

static void test_subject_finalize(GObject *gobject) {
  TestSubjectPrivate *priv = test_subject_get_instance_private(TEST_SUBJECT(gobject));

  g_free(priv->string);

  G_OBJECT_CLASS(test_subject_parent_class)->finalize(gobject);
}

static void test_subject_set_property(GObject *gobject, guint property_id, const GValue *value, GParamSpec *pspec) {
  TestSubjectPrivate *priv = test_subject_get_instance_private(TEST_SUBJECT(gobject));

  switch ((TestSubjectProperty) property_id) {
  case PROP_STRING:
    g_free(priv->string);
    priv->string = g_value_dup_string(value);
    break;
  default:
    G_OBJECT_WARN_INVALID_PROPERTY_ID(gobject, property_id, pspec);
    break;
  }
}

static void test_subject_get_property(GObject *gobject, guint property_id, GValue *value, GParamSpec *pspec) {
  TestSubjectPrivate *priv = test_subject_get_instance_private(TEST_SUBJECT(gobject));

  switch ((TestSubjectProperty) property_id) {
  case PROP_STRING:
    g_value_set_string(value, priv->string);
    break;
  default:
    /* We don't have any other property... */
    G_OBJECT_WARN_INVALID_PROPERTY_ID(gobject, property_id, pspec);
    break;
  }
}

static void test_subject_class_init(TestSubjectClass *klass) {
  GObjectClass *object_class = G_OBJECT_CLASS(klass);

  object_class->set_property = test_subject_set_property;
  object_class->get_property = test_subject_get_property;
  object_class->dispose = test_subject_dispose;
  object_class->finalize = test_subject_finalize;

  obj_properties[PROP_STRING] = g_param_spec_string("string", "String", "A string property.",
                                                    NULL  /* default value */,
                                                    G_PARAM_CONSTRUCT_ONLY | G_PARAM_READWRITE);

  g_object_class_install_properties(object_class, N_PROPERTIES, obj_properties);

}

static void test_subject_init(TestSubject *self) {
  // TestSubjectPrivate *priv = test_subject_instance_private(self);

  /* initialize all public and private members to reasonable default values.
   * They are all automatically initialized to 0 to begin with. */
}

TestSubject *test_subject_new(void) {
  return g_object_new(TEST_TYPE_SUBJECT, NULL);
}


gchar *test_subject_receive_string_and_len(TestSubject *self, gchar* str, int len) {
  gchar* retval = (gchar*) g_malloc(128);
  sprintf(retval, "%s-%d", str, len);
  return retval;
}

int test_subject_receive_optional_array_and_len(TestSubject *self, const char* buf, int len) {
  if (len == 0 || buf == NULL) {
    return 0;
  }

  return len;
}

