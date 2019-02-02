pragma Warnings (Off);
pragma Ada_95;
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: 8.2.0" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_add_int" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#1d6f8efa#;
   pragma Export (C, u00001, "add_intB");
   u00002 : constant Version_32 := 16#050ff2f0#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#4113f22b#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#fd2ad2f1#;
   pragma Export (C, u00004, "gnatS");
   u00005 : constant Version_32 := 16#b48102f5#;
   pragma Export (C, u00005, "gnat__ioB");
   u00006 : constant Version_32 := 16#6227e843#;
   pragma Export (C, u00006, "gnat__ioS");
   u00007 : constant Version_32 := 16#4635ec04#;
   pragma Export (C, u00007, "systemS");
   u00008 : constant Version_32 := 16#935938d8#;
   pragma Export (C, u00008, "system__memoryB");
   u00009 : constant Version_32 := 16#1f488a30#;
   pragma Export (C, u00009, "system__memoryS");
   u00010 : constant Version_32 := 16#f52efeca#;
   pragma Export (C, u00010, "ada__exceptionsB");
   u00011 : constant Version_32 := 16#e824681c#;
   pragma Export (C, u00011, "ada__exceptionsS");
   u00012 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00012, "adaS");
   u00013 : constant Version_32 := 16#5726abed#;
   pragma Export (C, u00013, "ada__exceptions__last_chance_handlerB");
   u00014 : constant Version_32 := 16#41e5552e#;
   pragma Export (C, u00014, "ada__exceptions__last_chance_handlerS");
   u00015 : constant Version_32 := 16#ae860117#;
   pragma Export (C, u00015, "system__soft_linksB");
   u00016 : constant Version_32 := 16#bbca7dc7#;
   pragma Export (C, u00016, "system__soft_linksS");
   u00017 : constant Version_32 := 16#20d205ed#;
   pragma Export (C, u00017, "system__secondary_stackB");
   u00018 : constant Version_32 := 16#bb5d8e68#;
   pragma Export (C, u00018, "system__secondary_stackS");
   u00019 : constant Version_32 := 16#36a16434#;
   pragma Export (C, u00019, "system__parametersB");
   u00020 : constant Version_32 := 16#bea32858#;
   pragma Export (C, u00020, "system__parametersS");
   u00021 : constant Version_32 := 16#ced09590#;
   pragma Export (C, u00021, "system__storage_elementsB");
   u00022 : constant Version_32 := 16#6bf6a600#;
   pragma Export (C, u00022, "system__storage_elementsS");
   u00023 : constant Version_32 := 16#7d395b5e#;
   pragma Export (C, u00023, "system__soft_links__initializeB");
   u00024 : constant Version_32 := 16#5697fc2b#;
   pragma Export (C, u00024, "system__soft_links__initializeS");
   u00025 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00025, "system__stack_checkingB");
   u00026 : constant Version_32 := 16#c88a87ec#;
   pragma Export (C, u00026, "system__stack_checkingS");
   u00027 : constant Version_32 := 16#34742901#;
   pragma Export (C, u00027, "system__exception_tableB");
   u00028 : constant Version_32 := 16#1b9b8546#;
   pragma Export (C, u00028, "system__exception_tableS");
   u00029 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00029, "system__exceptionsB");
   u00030 : constant Version_32 := 16#2e5681f2#;
   pragma Export (C, u00030, "system__exceptionsS");
   u00031 : constant Version_32 := 16#80916427#;
   pragma Export (C, u00031, "system__exceptions__machineB");
   u00032 : constant Version_32 := 16#3bad9081#;
   pragma Export (C, u00032, "system__exceptions__machineS");
   u00033 : constant Version_32 := 16#aa0563fc#;
   pragma Export (C, u00033, "system__exceptions_debugB");
   u00034 : constant Version_32 := 16#38bf15c0#;
   pragma Export (C, u00034, "system__exceptions_debugS");
   u00035 : constant Version_32 := 16#6c2f8802#;
   pragma Export (C, u00035, "system__img_intB");
   u00036 : constant Version_32 := 16#44ee0cc6#;
   pragma Export (C, u00036, "system__img_intS");
   u00037 : constant Version_32 := 16#39df8c17#;
   pragma Export (C, u00037, "system__tracebackB");
   u00038 : constant Version_32 := 16#181732c0#;
   pragma Export (C, u00038, "system__tracebackS");
   u00039 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00039, "system__traceback_entriesB");
   u00040 : constant Version_32 := 16#466e1a74#;
   pragma Export (C, u00040, "system__traceback_entriesS");
   u00041 : constant Version_32 := 16#c2486b24#;
   pragma Export (C, u00041, "system__traceback__symbolicB");
   u00042 : constant Version_32 := 16#c84061d1#;
   pragma Export (C, u00042, "system__traceback__symbolicS");
   u00043 : constant Version_32 := 16#179d7d28#;
   pragma Export (C, u00043, "ada__containersS");
   u00044 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00044, "ada__exceptions__tracebackB");
   u00045 : constant Version_32 := 16#20245e75#;
   pragma Export (C, u00045, "ada__exceptions__tracebackS");
   u00046 : constant Version_32 := 16#5ab55268#;
   pragma Export (C, u00046, "interfacesS");
   u00047 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00047, "interfaces__cB");
   u00048 : constant Version_32 := 16#f60287af#;
   pragma Export (C, u00048, "interfaces__cS");
   u00049 : constant Version_32 := 16#e865e681#;
   pragma Export (C, u00049, "system__bounded_stringsB");
   u00050 : constant Version_32 := 16#31c8cd1d#;
   pragma Export (C, u00050, "system__bounded_stringsS");
   u00051 : constant Version_32 := 16#b018f329#;
   pragma Export (C, u00051, "system__crtlS");
   u00052 : constant Version_32 := 16#2260731f#;
   pragma Export (C, u00052, "system__dwarf_linesB");
   u00053 : constant Version_32 := 16#5f137e60#;
   pragma Export (C, u00053, "system__dwarf_linesS");
   u00054 : constant Version_32 := 16#5b4659fa#;
   pragma Export (C, u00054, "ada__charactersS");
   u00055 : constant Version_32 := 16#8f637df8#;
   pragma Export (C, u00055, "ada__characters__handlingB");
   u00056 : constant Version_32 := 16#3b3f6154#;
   pragma Export (C, u00056, "ada__characters__handlingS");
   u00057 : constant Version_32 := 16#4b7bb96a#;
   pragma Export (C, u00057, "ada__characters__latin_1S");
   u00058 : constant Version_32 := 16#e6d4fa36#;
   pragma Export (C, u00058, "ada__stringsS");
   u00059 : constant Version_32 := 16#96df1a3f#;
   pragma Export (C, u00059, "ada__strings__mapsB");
   u00060 : constant Version_32 := 16#1e526bec#;
   pragma Export (C, u00060, "ada__strings__mapsS");
   u00061 : constant Version_32 := 16#d68fb8f1#;
   pragma Export (C, u00061, "system__bit_opsB");
   u00062 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00062, "system__bit_opsS");
   u00063 : constant Version_32 := 16#72b39087#;
   pragma Export (C, u00063, "system__unsigned_typesS");
   u00064 : constant Version_32 := 16#92f05f13#;
   pragma Export (C, u00064, "ada__strings__maps__constantsS");
   u00065 : constant Version_32 := 16#a0d3d22b#;
   pragma Export (C, u00065, "system__address_imageB");
   u00066 : constant Version_32 := 16#e7d9713e#;
   pragma Export (C, u00066, "system__address_imageS");
   u00067 : constant Version_32 := 16#ec78c2bf#;
   pragma Export (C, u00067, "system__img_unsB");
   u00068 : constant Version_32 := 16#ed47ac70#;
   pragma Export (C, u00068, "system__img_unsS");
   u00069 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00069, "system__ioB");
   u00070 : constant Version_32 := 16#d8771b4b#;
   pragma Export (C, u00070, "system__ioS");
   u00071 : constant Version_32 := 16#f790d1ef#;
   pragma Export (C, u00071, "system__mmapB");
   u00072 : constant Version_32 := 16#7c445363#;
   pragma Export (C, u00072, "system__mmapS");
   u00073 : constant Version_32 := 16#92d882c5#;
   pragma Export (C, u00073, "ada__io_exceptionsS");
   u00074 : constant Version_32 := 16#0cdaa54a#;
   pragma Export (C, u00074, "system__mmap__os_interfaceB");
   u00075 : constant Version_32 := 16#82f29877#;
   pragma Export (C, u00075, "system__mmap__os_interfaceS");
   u00076 : constant Version_32 := 16#834dfe5e#;
   pragma Export (C, u00076, "system__mmap__unixS");
   u00077 : constant Version_32 := 16#68267aea#;
   pragma Export (C, u00077, "system__os_libB");
   u00078 : constant Version_32 := 16#4542b55d#;
   pragma Export (C, u00078, "system__os_libS");
   u00079 : constant Version_32 := 16#d1060688#;
   pragma Export (C, u00079, "system__case_utilB");
   u00080 : constant Version_32 := 16#623c85d3#;
   pragma Export (C, u00080, "system__case_utilS");
   u00081 : constant Version_32 := 16#2a8e89ad#;
   pragma Export (C, u00081, "system__stringsB");
   u00082 : constant Version_32 := 16#2623c091#;
   pragma Export (C, u00082, "system__stringsS");
   u00083 : constant Version_32 := 16#ef6ff0b4#;
   pragma Export (C, u00083, "system__object_readerB");
   u00084 : constant Version_32 := 16#0b06497e#;
   pragma Export (C, u00084, "system__object_readerS");
   u00085 : constant Version_32 := 16#1a74a354#;
   pragma Export (C, u00085, "system__val_lliB");
   u00086 : constant Version_32 := 16#dc110aa4#;
   pragma Export (C, u00086, "system__val_lliS");
   u00087 : constant Version_32 := 16#afdbf393#;
   pragma Export (C, u00087, "system__val_lluB");
   u00088 : constant Version_32 := 16#0841c7f5#;
   pragma Export (C, u00088, "system__val_lluS");
   u00089 : constant Version_32 := 16#27b600b2#;
   pragma Export (C, u00089, "system__val_utilB");
   u00090 : constant Version_32 := 16#ea955afa#;
   pragma Export (C, u00090, "system__val_utilS");
   u00091 : constant Version_32 := 16#d7bf3f29#;
   pragma Export (C, u00091, "system__exception_tracesB");
   u00092 : constant Version_32 := 16#62eacc9e#;
   pragma Export (C, u00092, "system__exception_tracesS");
   u00093 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00093, "system__wch_conB");
   u00094 : constant Version_32 := 16#5d48ced6#;
   pragma Export (C, u00094, "system__wch_conS");
   u00095 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00095, "system__wch_stwB");
   u00096 : constant Version_32 := 16#7059e2d7#;
   pragma Export (C, u00096, "system__wch_stwS");
   u00097 : constant Version_32 := 16#a831679c#;
   pragma Export (C, u00097, "system__wch_cnvB");
   u00098 : constant Version_32 := 16#52ff7425#;
   pragma Export (C, u00098, "system__wch_cnvS");
   u00099 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00099, "system__wch_jisB");
   u00100 : constant Version_32 := 16#d28f6d04#;
   pragma Export (C, u00100, "system__wch_jisS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  gnat%s
   --  gnat.io%s
   --  gnat.io%b
   --  interfaces%s
   --  system%s
   --  system.case_util%s
   --  system.case_util%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.io%s
   --  system.io%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.unsigned_types%s
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.secondary_stack%s
   --  system.standard_library%s
   --  system.exception_traces%s
   --  ada.exceptions%s
   --  system.wch_stw%s
   --  system.val_util%s
   --  system.val_llu%s
   --  system.val_lli%s
   --  system.os_lib%s
   --  system.bit_ops%s
   --  ada.characters.handling%s
   --  ada.exceptions.traceback%s
   --  ada.exceptions.traceback%b
   --  system.soft_links%s
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.containers%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.soft_links.initialize%s
   --  system.soft_links.initialize%b
   --  system.soft_links%b
   --  system.secondary_stack%b
   --  system.address_image%s
   --  system.bounded_strings%s
   --  ada.exceptions.last_chance_handler%s
   --  system.memory%s
   --  system.memory%b
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.standard_library%b
   --  system.exception_traces%b
   --  system.wch_stw%b
   --  system.val_util%b
   --  system.val_llu%b
   --  system.val_lli%b
   --  system.os_lib%b
   --  system.bit_ops%b
   --  ada.strings.maps%s
   --  ada.strings.maps.constants%s
   --  ada.characters.handling%b
   --  interfaces.c%s
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  system.address_image%b
   --  system.bounded_strings%b
   --  ada.exceptions.last_chance_handler%b
   --  system.mmap%s
   --  ada.strings.maps%b
   --  interfaces.c%b
   --  system.object_reader%s
   --  system.dwarf_lines%s
   --  system.dwarf_lines%b
   --  system.mmap.unix%s
   --  system.mmap.os_interface%s
   --  system.mmap%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  system.object_reader%b
   --  system.mmap.os_interface%b
   --  add_int%b
   --  END ELABORATION ORDER

end ada_main;
