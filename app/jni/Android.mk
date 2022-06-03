# SD2_ttf after 2.0.18 starts to build internal copy of HarfBuzz by default, but we don't need it.
# So disable HarfBuzz here to reduce app size.
SUPPORT_HARFBUZZ := false

include $(call all-subdir-makefiles)
