Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 606C0B9FACD
	for <lists+linux1394-devel@lfdr.de>; Thu, 25 Sep 2025 15:53:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6gU3dZ89LRpgiXqoNUJ43BCKa6PujWvcETaepqkttuE=; b=XKA23wqAe1TaedeM7fFJ0eZ/JT
	izsMJl0ri1YnRCJnAPHpH/uq7ajBza+wLPwkMkLdIhUy2bOrGvex0Ar/W5NiM7gM3UoFaw0gEQ0zo
	aDJpKglkVqvAh4IdTTcJjiBIJNghcdu2AT0VwToKDPYev1IF+W5uzXBsAts0xd8MoTOY=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1v1mPi-00024X-O9;
	Thu, 25 Sep 2025 13:53:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1v1mPh-00024O-5E
 for linux1394-devel@lists.sourceforge.net;
 Thu, 25 Sep 2025 13:53:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nbtXT8zEFemx2Nk5Z8fbjoImx297rkcdm6/1JnClD8I=; b=LW6W5N5H5uq5KdHuQmVcOqynYp
 5OB5srTVe8WgxNgqlQpglXHPPxqvuG4s+PIZe+s12ldQ1vsVf5dt1YFaYEn4MWnv1Pdi1v17CWWAD
 ITJMHxdGQQaJHqWGHK3npa95W3RwacLuVQXYK0XWH4FMnkGHIRSNHRxVdJpawspLpXM0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nbtXT8zEFemx2Nk5Z8fbjoImx297rkcdm6/1JnClD8I=; b=RlZMbOtPvANh69sChscr9PnXOW
 IqBD4pYzeMKd6W9kfaTwXaEnP7EXkYIfqajG96I9n5HMA5H3uLH17Q0S6/7ytVvhaDw6dklronRhE
 c/S9ck9Af2whY2xxhgLycbLXy6LP+fpZdPayd6C7T7VK3+JF+WuDeVFTI0HV5wIEbmxM=;
Received: from fhigh-a5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v1mPf-0000Po-Nr for linux1394-devel@lists.sourceforge.net;
 Thu, 25 Sep 2025 13:53:37 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
 by mailfhigh.phl.internal (Postfix) with ESMTP id F1C12140008A;
 Thu, 25 Sep 2025 09:53:24 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-02.internal (MEProxy); Thu, 25 Sep 2025 09:53:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1758808404; x=
 1758894804; bh=nbtXT8zEFemx2Nk5Z8fbjoImx297rkcdm6/1JnClD8I=; b=E
 T1k/PudVKc94Q7EuCxtPy5vjaLIZ9BKHoMrMgvTPVb8VeGFlNShex481xoRF6LSg
 QjizZRKeogddqOCmgeR838snoRo5BR2nPnkBlZxqsIMdPT1g5QjIKt1YAGxdtGol
 sxQKP0x2plUVEFZlZtxTFRB42oSAU7U61u+BBNMmcZhUCHTaMxxrQPp+SVDaRKfL
 xoKY1COh33dIz1bOQAvcsfDIUdraj6g6Vj2RUd+OwcrPQ72OFO867FnRGunGpFgm
 s+acjW/0mp6/5Nn2Aygyb0w64QF6jaauvPtIJwGhbOhnc5SbPySpDzOlOxyk5ta5
 bT/E+ZTIYJagQpES0PP5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1758808404; x=1758894804; bh=nbtXT8zEFemx2Nk5Z8fbjoImx297rkcdm6/
 1JnClD8I=; b=g4pYieGSEhYYtRZ5lhCpgSXgDdkbzxrXZNxuQC/7TyYfbMQzj67
 aN+zSy3rN3OOlJtloklaEG3xwvuG2RF2W5CyFySuPVAtIupsX6cPDUfMGhDrwmLi
 sCWlf36BAacsgKFxFBDxArvE3A4V+8ydkAbV9oz/OhoWM1vhLncHJ36J1VXO5kJO
 ZWr/HbjVjTJl5kwj8eXZSB6ino0S7O6M9GaDXwPDSmYXay7gY8bJdbFFaHCVV/rH
 t0HFFzgneUp+KOKs+gIQgiBEOsCctGU2kyZLBB3mz06UYdI8MV8k/INjo+3bMkBv
 h92KcGqtqwACTin7wVlLdpM+Qr1Mchyq95Q==
X-ME-Sender: <xms:VEnVaCvqsYhjmne3CwTFsWbd2l7L8-0EJmWD0m3rZRVgG27Zb95OYQ>
 <xme:VEnVaPPZkR5IpusbkkCfvCTOXFbJkeCgqfMfU1LGFb-v6LMddtxA3efm8I2iHrJPz
 H8378eE5UafyPjmS0-PI7acWnBsXOTnFG2tFYIDnJZ5umDNHBl6uw>
X-ME-Received: <xmr:VEnVaA2aTx6GehIM8pFtXgx_RThllIHAVMdLU2hOscK5LZKyKqnqvBXb24RMm9RWzlp23TJJl12MH8cgLBZQPAu8i4MUn6Idi6o>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdeiieeiiecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtredttd
 dtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepveeilefhudekff
 ehkeffudduvedvfeduleelfeegieeljeehjeeuvdeghfetvedvnecuffhomhgrihhnpehk
 vghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgt
 phhtthhopeefpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefle
 egqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthht
 oheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpth
 htoheplhhkphesihhnthgvlhdrtghomh
X-ME-Proxy: <xmx:VEnVaLPG2cAne7lMYYPEu-JP2YT2i9ht8WxyIq-AdUD5MzWyc8vBkw>
 <xmx:VEnVaA12FZqJE0oXD_vm_nvRB8zN4pgG8jk4eWP_68Q_5edwea9f9g>
 <xmx:VEnVaCGyXWDAr4WCS8aLbVqFcegmiCtL8UjqkcLQnH03yOFv80YfoA>
 <xmx:VEnVaN6LRHhwJQDjNMPTK5Uu3iRkkRhQ6xH4DUtU1P0ICx2SX8BHlg>
 <xmx:VEnVaHE9iwTenuhlKMIAuh-sLldKP3gRi28wLZJ6YYsKY82zu33T8-gH>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 25 Sep 2025 09:53:23 -0400 (EDT)
Date: Thu, 25 Sep 2025 22:53:21 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: core: suppress overflow warning when computing
 jiffies from isochronous cycle
Message-ID: <20250925135321.GA329042@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>
References: <20250924131140.261686-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250924131140.261686-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Sep 24, 2025 at 10:11:40PM +0900, Takashi Sakamoto
 wrote: > The multiplication by USEC_PER_SEC (=1000000L) may trigger an
 overflow
 > warning with 32 bit storage. In the case of the subsystem t [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [103.168.172.156 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1v1mPf-0000Po-Nr
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
Cc: linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Wed, Sep 24, 2025 at 10:11:40PM +0900, Takashi Sakamoto wrote:
> The multiplication by USEC_PER_SEC (=1000000L) may trigger an overflow
> warning with 32 bit storage. In the case of the subsystem the input value
> ranges between 800 and 16000, thus the result always fits within 32 bit
> storage.
> 
> This commit suppresses the warning by using widening conversion to 64 bit
> storage before multiplication, then using narrowing conversion to 32 bit
> storage.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202509170136.b5ZHaNAV-lkp@intel.com/
> Fixes: 379b870c28c6 ("firewire: core: use helper macros instead of direct access to HZ")
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
