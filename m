Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A61BB94775D
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Aug 2024 10:34:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1satAN-0003J2-DB;
	Mon, 05 Aug 2024 08:34:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1satAH-0003IM-JD
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:34:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zJ9UFW3JNgRiKo3q812jCKGIld512jGf9/66Tll64Ls=; b=HLfRVfRjLtvvcKNXLB4H8fKvN2
 lsRls6V8x7O+mE12l2wYRGhxoOUGAtmUnfTRwUP0D5e26SM7zzwPUu7pBLbKuKjYZa6bgt6UzudoR
 /X90xzko0QfEuxJ/5KyfcfBLLIO3onc6rvC+J0o3xITgC9OA4d13VZ6NMiLy2N5dRZRQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zJ9UFW3JNgRiKo3q812jCKGIld512jGf9/66Tll64Ls=; b=JEQukyakd4jZE++WwpIzXxzLNt
 VAFn41G7myzMqO4jDQdeCpxkrFi3ikT3+5zghJSwQ/N5TunJpU/ygReeKts5NQQqWQ42zESOzaSIR
 v50fqO2VNl6Sl4jt0dGdcuQ8kkRMzyWBHaupbzoW0Gkv6GtPGhUhvbOflolvhx18+XiE=;
Received: from fhigh4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1satAG-0000fa-HS for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:34:01 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id DC4C51151DC2;
 Mon,  5 Aug 2024 04:33:49 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 05 Aug 2024 04:33:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722846829; x=
 1722933229; bh=zJ9UFW3JNgRiKo3q812jCKGIld512jGf9/66Tll64Ls=; b=c
 1xn301eGytn+wVO1yDQK7keAg51KkyefkwH7umZ/HpnpT34xYA1IkNaB3yMOGUNj
 WYuV9aAKj91S4rnDu9sVYy3ZVDtt9T7bafSwW5nWmzFt7oaOqz8NDuEAAhTmi3/B
 I4nRCrY1hWoutdn559YzWyIsVuTbMDPNrX8aqHNN6oOlkTQUs/TedrJy5elpzTKG
 wkzMhwrX0xF+zN0ZOSQBGx/ooRnNdD8CZbyL/J97uOD95fs9RkRbGn/6vN90SnD5
 DJDn2BMWHXG/CyFDOGqtT2b4K0y2dT/3b3NUeKNu3/CKzzm4kucfQ7BklXWfWk3k
 jHDixHmoqugSeSi0OthRQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1722846829; x=1722933229; bh=zJ9UFW3JNgRiKo3q812jCKGIld51
 2jGf9/66Tll64Ls=; b=SeD4BYcxOLcdEs4eGIo4ctBaMjlGxDgRPHyUERRUd2sy
 2m6bAtjpv86yMUcbFy0zf4MAIQKYNS72ZyzfBA2XmFxKMQfOOT4kCAg8c457e6nf
 /5kRdmgoJYoShFN9G2pRSuYkxMbCW9YsIPJz6VdPf11r5Cn2ss9JEy+m6iHk8Wji
 paJViiJhGtMkatlEJXZtgfVc+OBEh/vpldpQ2OA5AV4c6bwqMj7qhUZzM9NLSYsO
 ZRuPQgdwZkGkvj1i417xhyD6pIWMhavNvuv3wmN+yvopMjQgjLbVZTP3AIDFIOkf
 4otq5ieKzMTspcd4BbfLGCJGdtoZBEBKAIokjqw8JA==
X-ME-Sender: <xms:bY6wZuW6MrqXscaKw96EOb09DPNSNZ2F8-PY1mNQwNgwoDO3Q1Mddw>
 <xme:bY6wZqltlQSjtmcKH2AFgoIrat0L7puMtpAKLR_joOHXCDD9RvrjVBN35OZO9DU2w
 wjkLG3KeXu2wzOFtms>
X-ME-Received: <xmr:bY6wZibfUdEzWvs66yiMn9QTiRa8ulogjtgIW6Tr_pP0Kvcz9hrcgO86gEcc-dMKDKzl_3IuE0tGaS6h8icJFUjoUM7BOH-t>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeigddthecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepuedvffegge
 egfeevheehlefhgfevfedtgfffgeelhefghffhvdetheefhffggfefnecuffhomhgrihhn
 pehgihhthhhusgdrtghomhdpkhgvrhhnvghlrdhorhhgpddtuddrohhrghenucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedt
X-ME-Proxy: <xmx:bY6wZlWTQ547DS4fWmLXjwiIoby65VXO52Z_LbjYyeuBx_lEI86DnA>
 <xmx:bY6wZondw92IWsNK9FMn2WQsO__X_1HBICUvAtUNUgH8CRNrkdupUw>
 <xmx:bY6wZqcFoe6J9m34l78kpaT5HnuJq_Mo4W49YUG00w3jc2BZ4wqxPQ>
 <xmx:bY6wZqEDNcC63EOcAdKDflUcaZag9oIzUe4IdJ1vXdkfHueQCMVFDg>
 <xmx:bY6wZnu00_6EF5ZhaP14cmFuDlIzVPv_d-ML7vLJiXjeYKmo2yysEHzO>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Aug 2024 04:33:48 -0400 (EDT)
Date: Mon, 5 Aug 2024 17:33:45 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: kernel test robot <lkp@intel.com>
Subject: Re: [PATCH 17/17] firewire: ohci: use guard macro to serialize
 operations for isochronous contexts
Message-ID: <20240805083345.GA248096@workstation.local>
Mail-Followup-To: kernel test robot <lkp@intel.com>,
 linux1394-devel@lists.sourceforge.net, llvm@lists.linux.dev,
 oe-kbuild-all@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20240804130225.243496-18-o-takashi@sakamocchi.jp>
 <202408050730.y1eyRcTv-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202408050730.y1eyRcTv-lkp@intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Aug 05, 2024 at 07:33:01AM +0800, kernel test robot
 wrote: > url:
 https://github.com/intel-lab-lkp/linux/commits/Takashi-Sakamoto/firewire-core-use-guard-macro-to-maintain-static-packet-data-f
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.155 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.155 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1satAG-0000fa-HS
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
Cc: linux1394-devel@lists.sourceforge.net, llvm@lists.linux.dev,
 linux-kernel@vger.kernel.org, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Mon, Aug 05, 2024 at 07:33:01AM +0800, kernel test robot wrote:
> url:    https://github.com/intel-lab-lkp/linux/commits/Takashi-Sakamoto/firewire-core-use-guard-macro-to-maintain-static-packet-data-for-phy-configuration/20240804-210645
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git for-next
> patch link:    https://lore.kernel.org/r/20240804130225.243496-18-o-takashi%40sakamocchi.jp
> patch subject: [PATCH 17/17] firewire: ohci: use guard macro to serialize operations for isochronous contexts
> config: arm64-randconfig-003-20240805 (https://download.01.org/0day-ci/archive/20240805/202408050730.y1eyRcTv-lkp@intel.com/config)
> compiler: clang version 17.0.6 (https://github.com/llvm/llvm-project 6009708b4367171ccdbf4b5905cb6a803753fe18)
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240805/202408050730.y1eyRcTv-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202408050730.y1eyRcTv-lkp@intel.com/
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/firewire/ohci.c:3138:2: error: expected expression
>     3138 |         guard(spinlock_irq)(&ohci->lock);
>          |         ^
>    include/linux/cleanup.h:167:2: note: expanded from macro 'guard'
>      167 |         CLASS(_name, __UNIQUE_ID(guard))
>          |         ^
>    include/linux/cleanup.h:122:2: note: expanded from macro 'CLASS'
>      122 |         class_##_name##_t var __cleanup(class_##_name##_destructor) =   \
>          |         ^
>    <scratch space>:133:1: note: expanded from here
>      133 | class_spinlock_irq_t
>          | ^
>    1 error generated.

The macro expands a declaration, while the line just after the label
should be still any statement in C11.

I'll post take 2 patchset.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
