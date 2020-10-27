check that blobmsg_parse is producing expected results:

  $ [ -n "$TEST_BIN_DIR" ] && export PATH="$TEST_BIN_DIR:$PATH"
  $ export FUZZ_CORPUS="$TESTDIR/../fuzz/corpus"

  $ for blob in $(LC_ALL=C find $FUZZ_CORPUS -type f | sort ); do
  >   valgrind --quiet --leak-check=full test-blobmsg-parse $blob; \
  >   test-blobmsg-parse-san $blob; \
  > done
  71520a5c4b5ca73903216857abbad54a8002d44a: blobmsg_parse: ... (0)
  71520a5c4b5ca73903216857abbad54a8002d44a: blobmsg_parse_array: ... (0)
  71520a5c4b5ca73903216857abbad54a8002d44a: blobmsg_parse: ... (0)
  71520a5c4b5ca73903216857abbad54a8002d44a: blobmsg_parse_array: ... (0)
  c1dfd96eea8cc2b62785275bca38ac261256e278: blobmsg_parse: ... (0)
  c1dfd96eea8cc2b62785275bca38ac261256e278: blobmsg_parse_array: ... (0)
  c1dfd96eea8cc2b62785275bca38ac261256e278: blobmsg_parse: ... (0)
  c1dfd96eea8cc2b62785275bca38ac261256e278: blobmsg_parse_array: ... (0)
  c42ac1c46f1d4e211c735cc7dfad4ff8391110e9: blobmsg_parse: ... (0)
  c42ac1c46f1d4e211c735cc7dfad4ff8391110e9: blobmsg_parse_array: ... (0)
  c42ac1c46f1d4e211c735cc7dfad4ff8391110e9: blobmsg_parse: ... (0)
  c42ac1c46f1d4e211c735cc7dfad4ff8391110e9: blobmsg_parse_array: ... (0)
  crash-1b8fb1be45db3aff7699100f497fb74138f3df4f: blobmsg_parse: ... (0)
  crash-1b8fb1be45db3aff7699100f497fb74138f3df4f: blobmsg_parse_array: ... (0)
  crash-1b8fb1be45db3aff7699100f497fb74138f3df4f: blobmsg_parse: ... (0)
  crash-1b8fb1be45db3aff7699100f497fb74138f3df4f: blobmsg_parse_array: ... (0)
  crash-333757b203a44751d3535f24b05f467183a96d09: blobmsg_parse: ... (0)
  crash-333757b203a44751d3535f24b05f467183a96d09: blobmsg_parse_array: ... (0)
  crash-333757b203a44751d3535f24b05f467183a96d09: blobmsg_parse: ... (0)
  crash-333757b203a44751d3535f24b05f467183a96d09: blobmsg_parse_array: ... (0)
  crash-4c4d2c3c9ade5da9347534e290305c3b9760f627: blobmsg_parse: ... (-1)
  crash-4c4d2c3c9ade5da9347534e290305c3b9760f627: blobmsg_parse_array: ... (-1)
  crash-4c4d2c3c9ade5da9347534e290305c3b9760f627: blobmsg_parse: ... (-1)
  crash-4c4d2c3c9ade5da9347534e290305c3b9760f627: blobmsg_parse_array: ... (-1)
  crash-5e9937b197c88bf4e7b7ee2612456cad4cb83f5b: blobmsg_parse: ... (-1)
  crash-5e9937b197c88bf4e7b7ee2612456cad4cb83f5b: blobmsg_parse_array: ... (-1)
  crash-5e9937b197c88bf4e7b7ee2612456cad4cb83f5b: blobmsg_parse: ... (-1)
  crash-5e9937b197c88bf4e7b7ee2612456cad4cb83f5b: blobmsg_parse_array: ... (-1)
  crash-75b146c4e6fac64d3e62236b27c64b50657bab2a: blobmsg_parse: ... (-1)
  crash-75b146c4e6fac64d3e62236b27c64b50657bab2a: blobmsg_parse_array: ... (-1)
  crash-75b146c4e6fac64d3e62236b27c64b50657bab2a: blobmsg_parse: ... (-1)
  crash-75b146c4e6fac64d3e62236b27c64b50657bab2a: blobmsg_parse_array: ... (-1)
  crash-813f3e68661da09c26d4a87dbb9d5099e92be50f: blobmsg_parse: ... (-1)
  crash-813f3e68661da09c26d4a87dbb9d5099e92be50f: blobmsg_parse_array: ... (-1)
  crash-813f3e68661da09c26d4a87dbb9d5099e92be50f: blobmsg_parse: ... (-1)
  crash-813f3e68661da09c26d4a87dbb9d5099e92be50f: blobmsg_parse_array: ... (-1)
  crash-98595faa58ba01d85ba4fd0b109cd3d490b45795: blobmsg_parse: ... (0)
  crash-98595faa58ba01d85ba4fd0b109cd3d490b45795: blobmsg_parse_array: ... (0)
  crash-98595faa58ba01d85ba4fd0b109cd3d490b45795: blobmsg_parse: ... (0)
  crash-98595faa58ba01d85ba4fd0b109cd3d490b45795: blobmsg_parse_array: ... (0)
  crash-a3585b70f1c7ffbdec10f6dadc964336118485c4: blobmsg_parse: ... (-1)
  crash-a3585b70f1c7ffbdec10f6dadc964336118485c4: blobmsg_parse_array: ... (-1)
  crash-a3585b70f1c7ffbdec10f6dadc964336118485c4: blobmsg_parse: ... (-1)
  crash-a3585b70f1c7ffbdec10f6dadc964336118485c4: blobmsg_parse_array: ... (-1)
  crash-b3585b70f1c7ffbdec10f6dadc964336118485c4: blobmsg_parse: ... (-1)
  crash-b3585b70f1c7ffbdec10f6dadc964336118485c4: blobmsg_parse_array: ... (-1)
  crash-b3585b70f1c7ffbdec10f6dadc964336118485c4: blobmsg_parse: ... (-1)
  crash-b3585b70f1c7ffbdec10f6dadc964336118485c4: blobmsg_parse_array: ... (-1)
  crash-d0f3aa7d60a094b021f635d4edb7807c055a4ea1: blobmsg_parse: ... (0)
  crash-d0f3aa7d60a094b021f635d4edb7807c055a4ea1: blobmsg_parse_array: ... (0)
  crash-d0f3aa7d60a094b021f635d4edb7807c055a4ea1: blobmsg_parse: ... (0)
  crash-d0f3aa7d60a094b021f635d4edb7807c055a4ea1: blobmsg_parse_array: ... (0)
  crash-df9d1243057b27bbad6211e5a23d1cb699028aa2: blobmsg_parse: ... (-1)
  crash-df9d1243057b27bbad6211e5a23d1cb699028aa2: blobmsg_parse_array: ... (0)
  crash-df9d1243057b27bbad6211e5a23d1cb699028aa2: blobmsg_parse: ... (-1)
  crash-df9d1243057b27bbad6211e5a23d1cb699028aa2: blobmsg_parse_array: ... (0)
  crash-e0f8ecc694d96a09a1fced27b2a0838b670d34a0: blobmsg_parse: ... (0)
  crash-e0f8ecc694d96a09a1fced27b2a0838b670d34a0: blobmsg_parse_array: ... (0)
  crash-e0f8ecc694d96a09a1fced27b2a0838b670d34a0: blobmsg_parse: ... (0)
  crash-e0f8ecc694d96a09a1fced27b2a0838b670d34a0: blobmsg_parse_array: ... (0)
  crash-e2fd5ecb3b37926743256f1083f47a07c39e10c2: blobmsg_parse: ... (-1)
  crash-e2fd5ecb3b37926743256f1083f47a07c39e10c2: blobmsg_parse_array: ... (-1)
  crash-e2fd5ecb3b37926743256f1083f47a07c39e10c2: blobmsg_parse: ... (-1)
  crash-e2fd5ecb3b37926743256f1083f47a07c39e10c2: blobmsg_parse_array: ... (-1)
  valid-blobmsg.bin: blobmsg_parse: MLT (0)
  valid-blobmsg.bin: blobmsg_parse_array: MLT (0)
  valid-blobmsg.bin: blobmsg_parse: MLT (0)
  valid-blobmsg.bin: blobmsg_parse_array: MLT (0)