Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D16249F8F4
	for <lists+linux1394-devel@lfdr.de>; Fri, 28 Jan 2022 13:09:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nDQ4R-0007W4-9r; Fri, 28 Jan 2022 12:09:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lkp@intel.com>) id 1nDQ4Q-0007Vx-85
 for linux1394-devel@lists.sourceforge.net; Fri, 28 Jan 2022 12:09:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jzwYeGWVZBYw4fRcq+U4//FAmMmYxWiGRVe0xNJCHt8=; b=HdqMe7377rkJdHYQNrewBD4apD
 1PpQDAI8lMxGJooIQQAYBKA6IhPm223nlO4XPl6BK1zT9qlDMh7NXmcogkWUNDrFAvge+8QCKX1DM
 VYAIfbXjMbIrRRZvOqzCEZSG+U17RqP0soPjQ3nmLsQAHLcgPaFrd7vK/bvZ5r2PAZ8M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jzwYeGWVZBYw4fRcq+U4//FAmMmYxWiGRVe0xNJCHt8=; b=UV9lsgVsS4AzVefu/vu1FtfGbP
 bfOefu+Pmu4kv/siVCCL+776EPwG9p/mbwmI+YyrB+MEfBO7Zkmr//1SiObIOY5RLGtMrQDx4/8pX
 M7WSaeJgKzyj7ixmK06b5p/FIHD5QMAinCj4FRb8i1u8qq8JdkP+6jy+6mZ9DEybiXnY=;
Received: from mga18.intel.com ([134.134.136.126])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nDQ4M-000eSF-AN
 for linux1394-devel@lists.sourceforge.net; Fri, 28 Jan 2022 12:09:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643371774; x=1674907774;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=aovGcRhqRG1uGJXXes7TMxooAO2apW+D26PTIvucSHc=;
 b=HkVVkiUl6LE9txJgNSdLUV+gwp3DWwJPuxSHutb52jBOAl9VNiXQAhbd
 6xoE9QmCZ7TnGy6FUPB45ZUma64JPx9+55HRNNmcBlOLp/P6luq10bN6K
 Jv8OxaJSDpAFGfvN2u4ZRCaklQsxYYzhstVgKnKraIGLhd9i+1JH6MG1+
 CpTdyfa4zuj8seNDqHEJLBHbgINfQSq2DIqDW02a8j4bi/ypU14hwtAnI
 2f/mCWER4C7rQXTPbhpikVubZLD7neZmclD95kPEk1lBgTvLleaXyeL7/
 tiqOL2YizA4x7QY2ygbdFa+da5Et8XxJ/7sGy3Kzuw1xEz3QQXWE7Vhwj g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="230686361"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="230686361"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 04:09:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="697073685"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 28 Jan 2022 04:09:18 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nDQ45-000Npq-Ng; Fri, 28 Jan 2022 12:09:17 +0000
Date: Fri, 28 Jan 2022 20:08:57 +0800
From: kernel test robot <lkp@intel.com>
To: cgel.zte@gmail.com, stefanr@s5r6.in-berlin.de
Subject: Re: [PATCH] drivers/firewire: use struct_size over open coded
 arithmetic
Message-ID: <202201282044.Ye1mhIOd-lkp@intel.com>
References: <20220128080336.1211525-1-chi.minghao@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220128080336.1211525-1-chi.minghao@zte.com.cn>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Thank you for the patch! Yet something to improve: [auto
 build test ERROR on ieee1394-linux1394/for-next] [also build test ERROR on
 v5.17-rc1 next-20220128] [If your patch is applied to the wrong git tree,
 kindly drop us a note. And when submitting pa [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nDQ4M-000eSF-AN
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: kbuild-all@lists.01.org, Zeal Robot <zealci@zte.com.cn>,
 llvm@lists.linux.dev, linux-kernel@vger.kernel.org,
 Minghao Chi <chi.minghao@zte.com.cn>, linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on ieee1394-linux1394/for-next]
[also build test ERROR on v5.17-rc1 next-20220128]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/cgel-zte-gmail-com/drivers-firewire-use-struct_size-over-open-coded-arithmetic/20220128-160602
base:   https://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git for-next
config: hexagon-randconfig-r015-20220128 (https://download.01.org/0day-ci/archive/20220128/202201282044.Ye1mhIOd-lkp@intel.com/config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 33b45ee44b1f32ffdbc995e6fec806271b4b3ba4)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/1567c3f747219c35e83d9c1f4ac3c3d36f447d90
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review cgel-zte-gmail-com/drivers-firewire-use-struct_size-over-open-coded-arithmetic/20220128-160602
        git checkout 1567c3f747219c35e83d9c1f4ac3c3d36f447d90
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=hexagon SHELL=/bin/bash drivers/firewire/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/firewire/core-transaction.c:780:20: error: member reference type 'struct fw_request' is not a pointer; did you mean to use '.'?
           request = kmalloc(struct_size(*request, data, length), GFP_ATOMIC);
                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/overflow.h:326:18: note: expanded from macro 'struct_size'
                       sizeof(*(p)->member) + __must_be_array((p)->member),\
                               ~~~^
>> drivers/firewire/core-transaction.c:780:20: error: indirection requires pointer operand ('u32[]' (aka 'unsigned int[]') invalid)
           request = kmalloc(struct_size(*request, data, length), GFP_ATOMIC);
                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/overflow.h:326:14: note: expanded from macro 'struct_size'
                       sizeof(*(p)->member) + __must_be_array((p)->member),\
                              ^~~~~~~~~~~~
>> drivers/firewire/core-transaction.c:780:20: error: member reference type 'struct fw_request' is not a pointer; did you mean to use '.'?
           request = kmalloc(struct_size(*request, data, length), GFP_ATOMIC);
                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/overflow.h:326:49: note: expanded from macro 'struct_size'
                       sizeof(*(p)->member) + __must_be_array((p)->member),\
                                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~
   include/linux/compiler.h:240:59: note: expanded from macro '__must_be_array'
   #define __must_be_array(a)      BUILD_BUG_ON_ZERO(__same_type((a), &(a)[0]))
                                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~
   include/linux/compiler_types.h:264:63: note: expanded from macro '__same_type'
   #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
                                                                 ^
   include/linux/build_bug.h:16:62: note: expanded from macro 'BUILD_BUG_ON_ZERO'
   #define BUILD_BUG_ON_ZERO(e) ((int)(sizeof(struct { int:(-!!(e)); })))
                                                                ^
>> drivers/firewire/core-transaction.c:780:20: error: member reference type 'struct fw_request' is not a pointer; did you mean to use '.'?
           request = kmalloc(struct_size(*request, data, length), GFP_ATOMIC);
                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/overflow.h:326:49: note: expanded from macro 'struct_size'
                       sizeof(*(p)->member) + __must_be_array((p)->member),\
                                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~
   include/linux/compiler.h:240:65: note: expanded from macro '__must_be_array'
   #define __must_be_array(a)      BUILD_BUG_ON_ZERO(__same_type((a), &(a)[0]))
                                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~
   include/linux/compiler_types.h:264:74: note: expanded from macro '__same_type'
   #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
                                                                            ^
   include/linux/build_bug.h:16:62: note: expanded from macro 'BUILD_BUG_ON_ZERO'
   #define BUILD_BUG_ON_ZERO(e) ((int)(sizeof(struct { int:(-!!(e)); })))
                                                                ^
>> drivers/firewire/core-transaction.c:780:20: error: indirection requires pointer operand ('struct fw_request' invalid)
           request = kmalloc(struct_size(*request, data, length), GFP_ATOMIC);
                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/overflow.h:327:14: note: expanded from macro 'struct_size'
                       sizeof(*(p)))
                              ^~~~
   5 errors generated.


vim +780 drivers/firewire/core-transaction.c

   743	
   744	static struct fw_request *allocate_request(struct fw_card *card,
   745						   struct fw_packet *p)
   746	{
   747		struct fw_request *request;
   748		u32 *data, length;
   749		int request_tcode;
   750	
   751		request_tcode = HEADER_GET_TCODE(p->header[0]);
   752		switch (request_tcode) {
   753		case TCODE_WRITE_QUADLET_REQUEST:
   754			data = &p->header[3];
   755			length = 4;
   756			break;
   757	
   758		case TCODE_WRITE_BLOCK_REQUEST:
   759		case TCODE_LOCK_REQUEST:
   760			data = p->payload;
   761			length = HEADER_GET_DATA_LENGTH(p->header[3]);
   762			break;
   763	
   764		case TCODE_READ_QUADLET_REQUEST:
   765			data = NULL;
   766			length = 4;
   767			break;
   768	
   769		case TCODE_READ_BLOCK_REQUEST:
   770			data = NULL;
   771			length = HEADER_GET_DATA_LENGTH(p->header[3]);
   772			break;
   773	
   774		default:
   775			fw_notice(card, "ERROR - corrupt request received - %08x %08x %08x\n",
   776				 p->header[0], p->header[1], p->header[2]);
   777			return NULL;
   778		}
   779	
 > 780		request = kmalloc(struct_size(*request, data, length), GFP_ATOMIC);
   781		if (request == NULL)
   782			return NULL;
   783	
   784		request->response.speed = p->speed;
   785		request->response.timestamp =
   786				compute_split_timeout_timestamp(card, p->timestamp);
   787		request->response.generation = p->generation;
   788		request->response.ack = 0;
   789		request->response.callback = free_response_callback;
   790		request->ack = p->ack;
   791		request->length = length;
   792		if (data)
   793			memcpy(request->data, data, length);
   794	
   795		memcpy(request->request_header, p->header, sizeof(p->header));
   796	
   797		return request;
   798	}
   799	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
