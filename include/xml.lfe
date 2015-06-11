(defmacro defelem arg
  "This is a custom defelem macro based on the one in Examplar here:
     * https://github.com/lfex/exemplar/blob/master/include/macros.lfe
  The macro below differs in that is expects a prefix when defining the element
  and then when calling it -- something designeed to avoid namespace collisions
  with the general tag names common in XML documents.

  To use it, simply include it in your LFE include file and the define your
  XML elements like so:

    (defelem xml/mytag1)
    (defelem xml/mytag2)
    ...

  If you are certain that your tags will not have a name collision with any
  others, then you don't need this include and can instead use the exemplar
  xml include and simply do:

    (defelem mytag1)
    (defelem mytag2)
    ..."
  (let* ((prefix-and-tag (atom_to_list (car arg)))
         (`(,prefix ,tag) (string:tokens prefix-and-tag "/")))
    `(progn
      (defun ,(list_to_atom (++ prefix "/" tag)) ()
        (lists:flatten (exemplar-xml:make-xml ,tag)))
      (defun ,(list_to_atom (++ prefix "/" tag)) (content)
        (lists:flatten (exemplar-xml:make-xml ,tag content)))
      (defun ,(list_to_atom (++ prefix "/" tag)) (attrs content)
        (lists:flatten (exemplar-xml:make-xml ,tag attrs content))))))
