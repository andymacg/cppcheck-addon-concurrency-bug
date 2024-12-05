add_executable(B
	${CMAKE_CURRENT_SOURCE_DIR}/../common/many-times-compiled.c
)
target_compile_definitions(B
	PRIVATE
		DEF_B
)
