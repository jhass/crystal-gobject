#pragma once

#include <stdio.h>
#include <glib-object.h>

G_BEGIN_DECLS

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

G_END_DECLS
