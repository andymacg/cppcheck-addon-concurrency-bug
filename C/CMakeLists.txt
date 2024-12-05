add_executable(C
	${CMAKE_CURRENT_SOURCE_DIR}/../common/many-times-compiled.c
)
target_compile_definitions(C
	PRIVATE
		DEF_C
)
