Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC0B49FC33
	for <lists+linux1394-devel@lfdr.de>; Fri, 28 Jan 2022 15:54:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nDSe7-0001fK-0t; Fri, 28 Jan 2022 14:54:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lkp@intel.com>) id 1nDSe5-0001fD-SU
 for linux1394-devel@lists.sourceforge.net; Fri, 28 Jan 2022 14:54:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/jd6qbxs8a/D3x+duV+UD/7IjcrU8n6+ZCpU8Y+yslI=; b=Li+ZZevjDtXvmCY3TInk2kh5eT
 1XngzA5MhDRuBDb4Y2vsArj3Up1mabNaLL7U5nA9W6oQeg9j63CBNVADpp4b3ItQHC2UVWfQQJrPJ
 UFqRiXtcWx8V4MRcBPYug4rp04t20DTAEEHRhgp2x0X/7+0C5Q0FksTMD50F08mvYm7I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/jd6qbxs8a/D3x+duV+UD/7IjcrU8n6+ZCpU8Y+yslI=; b=eWVullASJlGbgCNlIg6qRlUY3p
 Kn/ouiIeP9xhCGjk3JKyldzS/kctJMRO6fJS3ID4lkzlAiPiICbDWU9+N0KHsxTpc80J1TmSnTXxS
 cBbRtLA7PACyx3b30mDAn9efenwInDh2uUy0vIx9an7BJfIb00hAVV4PV+7w168iSOxw=;
Received: from mga17.intel.com ([192.55.52.151])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nDSe3-000r5l-3M
 for linux1394-devel@lists.sourceforge.net; Fri, 28 Jan 2022 14:54:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643381675; x=1674917675;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=iqtXsvLLgcuDFWQEAjNmfTJbNdGDPjDGzi77gNCcokc=;
 b=RwThYKz0Q1BGA+dr3BQ13dnUQvDw27zLwfGbRzKdfCh69dDaHO7iXjZN
 gm6zj4Ggl3BW3gJaPHxTQUtPssUUAvfvhUe4st28v9KwJGaktZI6Wn+NI
 pQJhu3PvRXxlbVd6ABZTzpl209EI8NqnKD0kjegNv8va6eL9oNPMQXUuf
 S3L3uzOUHjx7ZxiaNOc3P79OzJNfh1hC7xIRslxpH0FioK/niEEZZG1O5
 +wBfRJSQOu4Gn8FTkzNiZjq7N0Zy+9jOhmZjPDtXmEaO7KinTsUQY/l8v
 RT3udiKY8OzVM3HEIZDnwXPb1UOrxr/IEeWsn44wLOambgjxf85n2vnGr w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="227801603"
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="227801603"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 06:54:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="521730521"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 28 Jan 2022 06:54:27 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nDSdu-000Nzq-DZ; Fri, 28 Jan 2022 14:54:26 +0000
Date: Fri, 28 Jan 2022 22:54:14 +0800
From: kernel test robot <lkp@intel.com>
To: cgel.zte@gmail.com, stefanr@s5r6.in-berlin.de
Subject: Re: [PATCH] drivers/firewire: use struct_size over open coded
 arithmetic
Message-ID: <202201282234.A43HZoSH-lkp@intel.com>
References: <20220128080336.1211525-1-chi.minghao@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220128080336.1211525-1-chi.minghao@zte.com.cn>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -3.2 (---)
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
 Content analysis details:   (-3.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.55.52.151 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
X-Headers-End: 1nDSe3-000r5l-3M
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
Cc: Zeal Robot <zealci@zte.com.cn>, linux1394-devel@lists.sourceforge.net,
 kbuild-all@lists.01.org, linux-kernel@vger.kernel.org,
 Minghao Chi <chi.minghao@zte.com.cn>
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
config: arm-randconfig-c002-20220124 (https://download.01.org/0day-ci/archive/20220128/202201282234.A43HZoSH-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/1567c3f747219c35e83d9c1f4ac3c3d36f447d90
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review cgel-zte-gmail-com/drivers-firewire-use-struct_size-over-open-coded-arithmetic/20220128-160602
        git checkout 1567c3f747219c35e83d9c1f4ac3c3d36f447d90
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arm SHELL=/bin/bash drivers/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from include/linux/device.h:29,
                    from drivers/firewire/core-transaction.c:10:
   drivers/firewire/core-transaction.c: In function 'allocate_request':
>> include/linux/overflow.h:326:32: error: invalid type argument of '->' (have 'struct fw_request')
     326 |                     sizeof(*(p)->member) + __must_be_array((p)->member),\
         |                                ^~
   drivers/firewire/core-transaction.c:780:27: note: in expansion of macro 'struct_size'
     780 |         request = kmalloc(struct_size(*request, data, length), GFP_ATOMIC);
         |                           ^~~~~~~~~~~
   In file included from include/linux/bits.h:22,
                    from include/linux/bitops.h:6,
                    from include/linux/kernel.h:12,
                    from include/asm-generic/bug.h:20,
                    from arch/arm/include/asm/bug.h:60,
                    from include/linux/bug.h:5,
                    from drivers/firewire/core-transaction.c:8:
   include/linux/overflow.h:326:63: error: invalid type argument of '->' (have 'struct fw_request')
     326 |                     sizeof(*(p)->member) + __must_be_array((p)->member),\
         |                                                               ^~
   include/linux/build_bug.h:16:62: note: in definition of macro 'BUILD_BUG_ON_ZERO'
      16 | #define BUILD_BUG_ON_ZERO(e) ((int)(sizeof(struct { int:(-!!(e)); })))
         |                                                              ^
   include/linux/compiler.h:240:51: note: in expansion of macro '__same_type'
     240 | #define __must_be_array(a)      BUILD_BUG_ON_ZERO(__same_type((a), &(a)[0]))
         |                                                   ^~~~~~~~~~~
   include/linux/overflow.h:326:44: note: in expansion of macro '__must_be_array'
     326 |                     sizeof(*(p)->member) + __must_be_array((p)->member),\
         |                                            ^~~~~~~~~~~~~~~
   drivers/firewire/core-transaction.c:780:27: note: in expansion of macro 'struct_size'
     780 |         request = kmalloc(struct_size(*request, data, length), GFP_ATOMIC);
         |                           ^~~~~~~~~~~
   include/linux/overflow.h:326:63: error: invalid type argument of '->' (have 'struct fw_request')
     326 |                     sizeof(*(p)->member) + __must_be_array((p)->member),\
         |                                                               ^~
   include/linux/build_bug.h:16:62: note: in definition of macro 'BUILD_BUG_ON_ZERO'
      16 | #define BUILD_BUG_ON_ZERO(e) ((int)(sizeof(struct { int:(-!!(e)); })))
         |                                                              ^
   include/linux/compiler.h:240:51: note: in expansion of macro '__same_type'
     240 | #define __must_be_array(a)      BUILD_BUG_ON_ZERO(__same_type((a), &(a)[0]))
         |                                                   ^~~~~~~~~~~
   include/linux/overflow.h:326:44: note: in expansion of macro '__must_be_array'
     326 |                     sizeof(*(p)->member) + __must_be_array((p)->member),\
         |                                            ^~~~~~~~~~~~~~~
   drivers/firewire/core-transaction.c:780:27: note: in expansion of macro 'struct_size'
     780 |         request = kmalloc(struct_size(*request, data, length), GFP_ATOMIC);
         |                           ^~~~~~~~~~~
   include/linux/build_bug.h:16:51: error: bit-field '<anonymous>' width not an integer constant
      16 | #define BUILD_BUG_ON_ZERO(e) ((int)(sizeof(struct { int:(-!!(e)); })))
         |                                                   ^
   include/linux/compiler.h:240:33: note: in expansion of macro 'BUILD_BUG_ON_ZERO'
     240 | #define __must_be_array(a)      BUILD_BUG_ON_ZERO(__same_type((a), &(a)[0]))
         |                                 ^~~~~~~~~~~~~~~~~
   include/linux/overflow.h:326:44: note: in expansion of macro '__must_be_array'
     326 |                     sizeof(*(p)->member) + __must_be_array((p)->member),\
         |                                            ^~~~~~~~~~~~~~~
   drivers/firewire/core-transaction.c:780:27: note: in expansion of macro 'struct_size'
     780 |         request = kmalloc(struct_size(*request, data, length), GFP_ATOMIC);
         |                           ^~~~~~~~~~~
   In file included from include/linux/device.h:29,
                    from drivers/firewire/core-transaction.c:10:
>> include/linux/overflow.h:327:28: error: invalid type argument of unary '*' (have 'struct fw_request')
     327 |                     sizeof(*(p)))
         |                            ^~~~
   drivers/firewire/core-transaction.c:780:27: note: in expansion of macro 'struct_size'
     780 |         request = kmalloc(struct_size(*request, data, length), GFP_ATOMIC);
         |                           ^~~~~~~~~~~


vim +326 include/linux/overflow.h

610b15c50e86eb1 Kees Cook           2018-05-07  312  
610b15c50e86eb1 Kees Cook           2018-05-07  313  /**
610b15c50e86eb1 Kees Cook           2018-05-07  314   * struct_size() - Calculate size of structure with trailing array.
610b15c50e86eb1 Kees Cook           2018-05-07  315   * @p: Pointer to the structure.
610b15c50e86eb1 Kees Cook           2018-05-07  316   * @member: Name of the array member.
b19d57d0f3cc6f1 Gustavo A. R. Silva 2020-06-08  317   * @count: Number of elements in the array.
610b15c50e86eb1 Kees Cook           2018-05-07  318   *
610b15c50e86eb1 Kees Cook           2018-05-07  319   * Calculates size of memory needed for structure @p followed by an
b19d57d0f3cc6f1 Gustavo A. R. Silva 2020-06-08  320   * array of @count number of @member elements.
610b15c50e86eb1 Kees Cook           2018-05-07  321   *
610b15c50e86eb1 Kees Cook           2018-05-07  322   * Return: number of bytes needed or SIZE_MAX on overflow.
610b15c50e86eb1 Kees Cook           2018-05-07  323   */
b19d57d0f3cc6f1 Gustavo A. R. Silva 2020-06-08  324  #define struct_size(p, member, count)					\
b19d57d0f3cc6f1 Gustavo A. R. Silva 2020-06-08  325  	__ab_c_size(count,						\
610b15c50e86eb1 Kees Cook           2018-05-07 @326  		    sizeof(*(p)->member) + __must_be_array((p)->member),\
610b15c50e86eb1 Kees Cook           2018-05-07 @327  		    sizeof(*(p)))
610b15c50e86eb1 Kees Cook           2018-05-07  328  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
