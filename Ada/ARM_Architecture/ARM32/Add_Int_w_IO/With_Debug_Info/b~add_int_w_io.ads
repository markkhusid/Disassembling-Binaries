pragma Ada_95;
pragma Warnings (Off);
with System;
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
                    "GNAT Version: 6.3.0" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_add_int_w_io" & ASCII.NUL;
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
   u00001 : constant Version_32 := 16#1c702a31#;
   pragma Export (C, u00001, "add_int_w_ioB");
   u00002 : constant Version_32 := 16#b6df930e#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#da4b6ed6#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#fd2ad2f1#;
   pragma Export (C, u00004, "gnatS");
   u00005 : constant Version_32 := 16#b48102f5#;
   pragma Export (C, u00005, "gnat__ioB");
   u00006 : constant Version_32 := 16#6227e843#;
   pragma Export (C, u00006, "gnat__ioS");
   u00007 : constant Version_32 := 16#2a1dd890#;
   pragma Export (C, u00007, "systemS");
   u00008 : constant Version_32 := 16#58e7cff7#;
   pragma Export (C, u00008, "system__memoryB");
   u00009 : constant Version_32 := 16#7360bea4#;
   pragma Export (C, u00009, "system__memoryS");
   u00010 : constant Version_32 := 16#3ffc8e18#;
   pragma Export (C, u00010, "adaS");
   u00011 : constant Version_32 := 16#ae1a5b4e#;
   pragma Export (C, u00011, "ada__exceptionsB");
   u00012 : constant Version_32 := 16#4b348612#;
   pragma Export (C, u00012, "ada__exceptionsS");
   u00013 : constant Version_32 := 16#e947e6a9#;
   pragma Export (C, u00013, "ada__exceptions__last_chance_handlerB");
   u00014 : constant Version_32 := 16#41e5552e#;
   pragma Export (C, u00014, "ada__exceptions__last_chance_handlerS");
   u00015 : constant Version_32 := 16#465d427a#;
   pragma Export (C, u00015, "system__soft_linksB");
   u00016 : constant Version_32 := 16#b49900c5#;
   pragma Export (C, u00016, "system__soft_linksS");
   u00017 : constant Version_32 := 16#b01dad17#;
   pragma Export (C, u00017, "system__parametersB");
   u00018 : constant Version_32 := 16#5437d5ef#;
   pragma Export (C, u00018, "system__parametersS");
   u00019 : constant Version_32 := 16#0f0cb66d#;
   pragma Export (C, u00019, "system__secondary_stackB");
   u00020 : constant Version_32 := 16#817c17f9#;
   pragma Export (C, u00020, "system__secondary_stackS");
   u00021 : constant Version_32 := 16#39a03df9#;
   pragma Export (C, u00021, "system__storage_elementsB");
   u00022 : constant Version_32 := 16#07de9294#;
   pragma Export (C, u00022, "system__storage_elementsS");
   u00023 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00023, "system__stack_checkingB");
   u00024 : constant Version_32 := 16#a4a2b378#;
   pragma Export (C, u00024, "system__stack_checkingS");
   u00025 : constant Version_32 := 16#87a448ff#;
   pragma Export (C, u00025, "system__exception_tableB");
   u00026 : constant Version_32 := 16#77b3b1d2#;
   pragma Export (C, u00026, "system__exception_tableS");
   u00027 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00027, "system__exceptionsB");
   u00028 : constant Version_32 := 16#427eb566#;
   pragma Export (C, u00028, "system__exceptionsS");
   u00029 : constant Version_32 := 16#0b0cea24#;
   pragma Export (C, u00029, "system__exceptions__machineS");
   u00030 : constant Version_32 := 16#aa0563fc#;
   pragma Export (C, u00030, "system__exceptions_debugB");
   u00031 : constant Version_32 := 16#54972154#;
   pragma Export (C, u00031, "system__exceptions_debugS");
   u00032 : constant Version_32 := 16#570325c8#;
   pragma Export (C, u00032, "system__img_intB");
   u00033 : constant Version_32 := 16#28c63852#;
   pragma Export (C, u00033, "system__img_intS");
   u00034 : constant Version_32 := 16#39df8c17#;
   pragma Export (C, u00034, "system__tracebackB");
   u00035 : constant Version_32 := 16#743f0654#;
   pragma Export (C, u00035, "system__tracebackS");
   u00036 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00036, "system__traceback_entriesB");
   u00037 : constant Version_32 := 16#2a462ee0#;
   pragma Export (C, u00037, "system__traceback_entriesS");
   u00038 : constant Version_32 := 16#6fd210f2#;
   pragma Export (C, u00038, "system__traceback__symbolicB");
   u00039 : constant Version_32 := 16#dd19f67a#;
   pragma Export (C, u00039, "system__traceback__symbolicS");
   u00040 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00040, "ada__exceptions__tracebackB");
   u00041 : constant Version_32 := 16#20245e75#;
   pragma Export (C, u00041, "ada__exceptions__tracebackS");
   u00042 : constant Version_32 := 16#57a37a42#;
   pragma Export (C, u00042, "system__address_imageB");
   u00043 : constant Version_32 := 16#8bf145aa#;
   pragma Export (C, u00043, "system__address_imageS");
   u00044 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00044, "system__wch_conB");
   u00045 : constant Version_32 := 16#3160fa42#;
   pragma Export (C, u00045, "system__wch_conS");
   u00046 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00046, "system__wch_stwB");
   u00047 : constant Version_32 := 16#1c71d643#;
   pragma Export (C, u00047, "system__wch_stwS");
   u00048 : constant Version_32 := 16#b96cfbef#;
   pragma Export (C, u00048, "system__wch_cnvB");
   u00049 : constant Version_32 := 16#3ed740b1#;
   pragma Export (C, u00049, "system__wch_cnvS");
   u00050 : constant Version_32 := 16#4be8ce1b#;
   pragma Export (C, u00050, "interfacesS");
   u00051 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00051, "system__wch_jisB");
   u00052 : constant Version_32 := 16#bea75990#;
   pragma Export (C, u00052, "system__wch_jisS");
   u00053 : constant Version_32 := 16#5a8c0e9e#;
   pragma Export (C, u00053, "system__crtlS");
   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  gnat%s
   --  gnat.io%s
   --  gnat.io%b
   --  interfaces%s
   --  system%s
   --  system.img_int%s
   --  system.img_int%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  system.standard_library%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  system.soft_links%s
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  ada.exceptions.traceback%s
   --  system.address_image%s
   --  system.exception_table%s
   --  system.exception_table%b
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.exceptions.machine%s
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.secondary_stack%s
   --  system.soft_links%b
   --  system.secondary_stack%b
   --  system.address_image%b
   --  ada.exceptions.traceback%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  add_int_w_io%b
   --  END ELABORATION ORDER


end ada_main;
