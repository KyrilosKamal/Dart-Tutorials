/*
  Comparison between List, Set, and Map in Dart:

  ┌────────────────────────┬──────────────────────────────┬────────────────────────────┬─────────────────────────────────────────────┐
  │ Property               │ List                         │ Set                        │ Map                                         │
  ├────────────────────────┼──────────────────────────────┼────────────────────────────┼─────────────────────────────────────────────┤
  │ Type                   │ Ordered Collection           │ Unordered Collection       │ Key-Value Pair Collection                   │
  │ Duplicates Allowed     │ Yes                          │ No                         │ Keys: No, Values: Yes                        │
  │ Access Elements        │ By index (list[0])           │ No index access            │ By key (map['key'])                          │
  │ Order Preservation     │ Maintains order              │ Doesn't maintain order     │ Doesn't maintain order                       │
  │ Lookup Performance     │ O(n)                         │ Faster than List           │ Fast (using keys)                            │
  │ Example                │ [1, 2, 2, 3]                 │ {1, 2, 3}                  │ {'name': 'Ali', 'age': 25}                   │
  └────────────────────────┴──────────────────────────────┴────────────────────────────┴─────────────────────────────────────────────┘
*/
