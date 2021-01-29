#pragma once

#include <stdio.h>
#include <glib-object.h>

G_BEGIN_DECLS


/**
 * TestStruct:
 * @in: A attribute using a invalid Crystal keyword.
 * @begin: Another attribute using a invalid Crystal keyword.
 *
 * A plain struct to test stuff
 */
struct TestStruct {
  gint16 in;
  gint16 begin;
};

#define TEST_TYPE_SUBJECT test_subject_get_type()
G_DECLARE_DERIVABLE_TYPE(TestSubject, test_subject, TEST, SUBJECT, GObject)

struct _TestSubjectClass {
  GObjectClass parent_class;

  /* Class virtual function fields. */
};

/**
 * test_subject_new:
 * Returns: (transfer full): Obj instance
 */
TestSubject *test_subject_new(void);

/**
 * test_subject_receive_string_and_len:
 * @str: (not nullable): a string
 * @len: string length
 * Returns: (not nullable): "str-len"
 */
gchar *test_subject_receive_string_and_len(TestSubject *self, gchar* str, int len);

/**
 * test_subject_receive_optional_array_and_len:
 * @buf: (array length=length) (element-type guint8) (allow-none): a buffer
 * @length: buffer length
 * Returns: "buffer length"
 */
int test_subject_receive_optional_array_and_len(TestSubject *self, const char* buf, int length);

/**
 * test_subject_receive_nullable_object
 * @nullable: (allow-none): A nullable object
 * Returns: 1 if nullable is null, 0 otherwise
 */
int test_subject_receive_nullable_object(TestSubject *self, TestSubject* nullable);

/**
 * test_subject_receive_arguments_named_as_crystal_keywords
 * Returns: Sum of all parameters
 */
int test_subject_receive_arguments_named_as_crystal_keywords(TestSubject *self_, int def, int alias, int module, int out, int begin, int self, int end, int abstract, int in);

G_END_DECLS
