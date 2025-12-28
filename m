Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3CECE4BC7
	for <lists+linux1394-devel@lfdr.de>; Sun, 28 Dec 2025 13:39:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WwdXed7saSicuh0m7I0bngzqJnzqN0Z1VOtLCuFO+gs=; b=mkcLFnvX/fiRinO46yECyUwZs4
	P5m8wAivk61WgidkrP1kdDm75aU+p/C9rWHgt9DfautRlN07RvTh91Aq5eLuCfLICdNhxJ0SbCSnD
	qrjEh2V5p7HSIkbvF9JgJAANbkbrkzwC9mVisF/wFctGJn8Mp0pSR22L0TydXzqHYikI=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vZq2y-0005s0-Bj;
	Sun, 28 Dec 2025 12:38:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vZq2w-0005rn-7P
 for linux1394-devel@lists.sourceforge.net;
 Sun, 28 Dec 2025 12:38:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hdznKYKR5/gyBIKEq9ZFhXCtKJCS060e4/Pbwn2GN/I=; b=Ynq5wF2zUMME3QGB7WK8wOT+rC
 RxMqVrcmq4Ha+5DL1YAlKY7VoggGBxPmbsi5tNgXrPYthoQHj7Y8kfjLzmx5En1qattdivDAG5o7l
 Gw4nPMYaOdwjEEO/7dsZC4WGveUqlqdWQwjNXnJU5HXaBym2WSb1dfW4E6AbQqqSu15k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hdznKYKR5/gyBIKEq9ZFhXCtKJCS060e4/Pbwn2GN/I=; b=j
 pXMyBg6xRl5bkkSAs5xpbyxl2UnpWi0MYjNKIwwDqL1mf5jjPoFwyuBKc/BaWbDx3KU+tAIF7NyE2
 F5Ca4YQzmYKmcHSRTLfaaphzYaeXk60c2VB4lYVILXX1p6rtS3wQ9P4xkf0TX7cySl4dFLVBASxj6
 GoABTfMnYnO5q3sk=;
Received: from fout-b5-smtp.messagingengine.com ([202.12.124.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vZq2u-0004QK-PB for linux1394-devel@lists.sourceforge.net;
 Sun, 28 Dec 2025 12:38:54 +0000
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
 by mailfout.stl.internal (Postfix) with ESMTP id C81F11D00365;
 Sun, 28 Dec 2025 07:38:41 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-01.internal (MEProxy); Sun, 28 Dec 2025 07:38:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm2; t=1766925521; x=1767011921; bh=hdznKYKR5/gyBIKEq9ZFh
 XCtKJCS060e4/Pbwn2GN/I=; b=PY8xEpXQ1dZtCcoP9npvRojVnj2YqjrQsqYk0
 JO4+XVkCxdHHDiFPWKelJH5EMRejzmCRfx0kKmO7Y9DbDDYRdnr6dmfM5G95Vy0/
 /HHQS32UUmK5vWl9NFs2FMuKT9Q2x7ojV6DbK1zt0HBjzLIPXe37lQMvNNuZ9zrm
 YAq3lTjcR5lQNZxKAEw3c37q+PT5tSWYIy09/cmRiqhsHUdHN+yqrXQk5YXo7HIb
 ljd3CByyKvpkKZQdN6tqLhNsbO9SlDVHWL8x8fRWqOhr04Egm4UM3rEJKVIA0evd
 Xs994AuL9z6x968PTBemwqSC0Z0a8AkIR1+jjpbmjM5gDqOzw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1766925521; x=
 1767011921; bh=hdznKYKR5/gyBIKEq9ZFhXCtKJCS060e4/Pbwn2GN/I=; b=u
 YWg9PMBmAJvaKqqx+d411d2c4Jy7EVqDigdgB+0+d1oBOp1B2eiAAnMLi323dSoY
 8PnaxPdjhb0+EeCjgVilEsAdT7h91UHOHKO9wJgSbj/Xh+zGnqf/aaYWE+NZZILk
 H29xxPelhwzRZ2SeL5ItMEmhQYHulOYC8g/ETfr+Rv+e9j4OyhgVvGqsdIDKkFMb
 HbDCiVl5LFZ9B67J16F3bWaAnjPgCeLvutWGHnStICxFAcj/mQ7dKCKkddi6p4bY
 j08TSnwKNVSvrremvevyoFzkhnmFoISN4rEQJDdWTduJcg/hL8WKK5sU9KWPMev4
 g4pCmWjfy9xkSfgKuwwcw==
X-ME-Sender: <xms:0SRRaU_TygxjZBSnqNPW37soB3eRGlq6upljpFv6u1LL8mWQwRiI2g>
 <xme:0SRRaeMcqoCnxyFcsmP7ErGTYOGkeiq28V0fRYSIoNOibaaSEAlqpW86Tr2gljdGo
 bsL84Jo578fTtTYXGF-jFb7j6F_77yFXqIVPyg__bnqf3_oZHpbmHk>
X-ME-Received: <xmr:0SRRaaH7u06EK_cp5KieMFspUCXAjFrLZStBm1xU15oCJiBKgmEmH-_pHtnXTYV6Nku8S8Scv22npJkfkiKnk4LElpFxNHTWX-0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdejgedvkecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkgggtugesthdtredttddtvd
 enucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihes
 shgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepteefieetfeevgedvgf
 egffehteeljeekkeelueegfffftdfgtdetteekvedvvdfgnecuffhomhgrihhnpehkvghr
 nhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
 hrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphht
 thhopeehpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehtohhrvhgrlhgusheslh
 hinhhugidqfhhouhhnuggrthhiohhnrdhorhhgpdhrtghpthhtoheplhhinhhugidqkhgv
 rhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidufe
 elgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphht
 thhopehfohhurhhivghrrdhthhhomhgrshesghhmrghilhdrtghomhdprhgtphhtthhope
 gthhhrihhsthhophhhvgdrjhgrihhllhgvthesfigrnhgrughoohdrfhhr
X-ME-Proxy: <xmx:0SRRaUQjhQSYcoSCtHVvRBTW0irpMxMFbCCcyyGhM_UYjbcMxIjkZQ>
 <xmx:0SRRaftjSFt6HdSShboK03TpVtLF_2RGSS81pQ5QZWWBmJm07u5WOw>
 <xmx:0SRRaUJVe7Q4DFuJIAyYgzaynrFQpUxnmr_TMVc9ZqprJqdSoncfaA>
 <xmx:0SRRacnzt8S6JVrXrFL1EhJAZOOiqS7qsTAnYxpQToFs-Mq83ah-nw>
 <xmx:0SRRaYg7fybxwWBP_qQMEU3jPa6-6TjsSjDTcScm0-MyPWF2-FF-vpAU>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 28 Dec 2025 07:38:39 -0500 (EST)
Date: Sun, 28 Dec 2025 21:38:37 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] firewire fixes for v6.19-rc3
Message-ID: <20251228123837.GA128998@workstation.local>
Mail-Followup-To: torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 fourier.thomas@gmail.com, christophe.jaillet@wanadoo.fr
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus,
 The following changes since commit 9448598b22c50c8a5bb77a9103e2d49f134c9578:
 Linux 6.19-rc2 (2025-12-21 15:52:04 -0800) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1vZq2u-0004QK-PB
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
Cc: linux1394-devel@lists.sourceforge.net, christophe.jaillet@wanadoo.fr,
 linux-kernel@vger.kernel.org, fourier.thomas@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Linus,

The following changes since commit 9448598b22c50c8a5bb77a9103e2d49f134c9578:

  Linux 6.19-rc2 (2025-12-21 15:52:04 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git tags/firewire-fixes-6.19-rc3

for you to fetch changes up to c48c0fd0e19684b6ecdb4108a429e3a4e73f5e21:

  firewire: nosy: Fix dma_free_coherent() size (2025-12-26 22:04:03 +0900)

----------------------------------------------------------------
firewire fixes for 6.19-rc3

A fix for PCI driver for Texas Instruments PCILyx series. The driver had
a bug where it allocated a DMA-coherent buffer of 16 KB but released it
using PAGE_SIZE. This disproportion was reported in 2020, but the fix was
never merged. It is finally resolved.

----------------------------------------------------------------
Thomas Fourier (1):
      firewire: nosy: Fix dma_free_coherent() size

 drivers/firewire/nosy.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
