add_executable(A
	${CMAKE_CURRENT_SOURCE_DIR}/../common/many-times-compiled.c
)
target_compile_definitions(A
	PRIVATE
		DEF_A
)
