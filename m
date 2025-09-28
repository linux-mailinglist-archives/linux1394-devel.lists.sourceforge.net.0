Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D84BA655C
	for <lists+linux1394-devel@lfdr.de>; Sun, 28 Sep 2025 03:19:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GcprJApxB3s29jTnIqOGhxP1lVHX7pUq0WSDGMr5z/U=; b=IZHrMcpwlIpFBD/yjsnVMzed6P
	yUZkMihnN8vy7u1fFqc+KrPGSI//ltB31gNCR0w5Za19uGdqNC1fQMhcXS+o1WRi203hmrVNjmy7R
	BMjl8qq6Zj7vapK43Arx0xmTN6tBenSmvCAe9h+82WIzlxwd692U40xH6XsCcKCiT2b8=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1v2g4W-0004Mh-TW;
	Sun, 28 Sep 2025 01:19:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1v2g4U-0004MJ-Or
 for linux1394-devel@lists.sourceforge.net;
 Sun, 28 Sep 2025 01:19:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1TxogxZatZGvNMp5ACuFO5OBpuGGoJOFgQq9sF3nt/4=; b=hM4CplqVvhbq5GN5YMc2ZQjXD9
 srXdU6vpR2AGq7+tn9jZ7sCUDbN+gqdzbXrYvhjuFGFY4SzumMYXuPLp8BP5mZVzCcASw4WyPNS/I
 ZgGa4jLddh+23FteGOCuJk0og/QJSI0G2B/6IJ4rtLAtQNPUhKk80nVZGMUyAvtfnaIM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1TxogxZatZGvNMp5ACuFO5OBpuGGoJOFgQq9sF3nt/4=; b=Q
 u0/oUWJKzlq1xSpracKlQ86LUBH5b9XT6eBYB8iRZqsq+YacT3VF9tgrcDZkyQGw9K9mNRibCDmyL
 qijUb+OZrqIPMahedSYjhHOo/VZ5eS07BtEsxaSK98hQzywTWmTTYyXjg9c8SzNF9AyRZ8c/iS/VG
 +RRnTy8kQmqT0V1c=;
Received: from fout-b6-smtp.messagingengine.com ([202.12.124.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v2g4U-0007qV-9M for linux1394-devel@lists.sourceforge.net;
 Sun, 28 Sep 2025 01:19:27 +0000
Received: from phl-compute-10.internal (phl-compute-10.internal [10.202.2.50])
 by mailfout.stl.internal (Postfix) with ESMTP id 92CB51D0004A;
 Sat, 27 Sep 2025 21:19:15 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-10.internal (MEProxy); Sat, 27 Sep 2025 21:19:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1759022355; x=1759108755; bh=1TxogxZatZ
 GvNMp5ACuFO5OBpuGGoJOFgQq9sF3nt/4=; b=qPVWc4Rxwj3foYInoPMvyIDL2v
 fdKXNCG1Xw5jcxZV21GdJJ1Uv7/x25vkSYXAaTlENq6AJ/noVpj5zwNepy1j+RPx
 U5lSe6s7Qd+X+FBwN21U85ArWmOTftjZTsTPTLSgJnRP1YbPL1LsXE9WfJOrVBv3
 qW0xb4kgzb/YFqPUqMW2wtLj48aYGG+m/wvJ8NGkiIQ49Kb78q0aV5xK52Q1TIbc
 QDaUaMp7EtFGntE7CwmqY6PXu3kyjOIaKsCa7y4+n45mtpfiQXDGgoJKT1sx28PT
 t5jbyclOfp4o8Vo3PUGxp9KET9FiYcgYxJKRoxpO98AP0kRT0D+0ohrVY4yw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1759022355; x=1759108755; bh=1TxogxZatZGvNMp5ACuFO5OBpuGGoJOFgQq
 9sF3nt/4=; b=ST9zoHux5r8ZqzY9zvdQ/ZK3/wMmNZqXMK8r2X5ER6EjG+kY28c
 cIh1fyQxIJCQWVop7q4gDgM8NDkpTZJa1LMdfd/SmkoWN6q8dGXFkIL0W3OAj9Tb
 X/8MYGpwgO4UjWwQL73T82Gp/7r9CE1I+yMbKpyltAnvhxsZQI+yTa8okEBFfwTu
 OmVPycgp23EQuUBWQ6I2o9mJH6F/k0V4e1GnDJyzbk9kmoVFTiye9BtYx8Yj54c6
 68p6Z4S3b1pvnVRTEzyRcZE03Noku5hxXbzb66jwotVfU+8JOItbSIPaYs65BsBf
 XQJaqlbUOzjYfOpl7Z7pKBsEhFpPRNkSOtQ==
X-ME-Sender: <xms:E43YaOP_yNH8Gfri-_CUklvjOg0fkCTXHzPo6Xa-Nt4jmH28CvNeGw>
 <xme:E43YaEtpiZCHLGvyVqYCSSlv99xdHTlUl8v57TPZ2WlWM0HDzccpeqqNeFG7hs0DH
 9I99B0Vz8Y2mcQ3RH1TJdMgLoe1T8GLpcXyKrP45mHInxY1Ya5D1ns>
X-ME-Received: <xmr:E43YaIWyoISWLjbNA-hirCGGYXKiydnnfLFWfrSLj7rfvAGkk13Zyguj92ssVhL1kwfmYHKEskScWh8NM9732TqKA9m1meoCkVW-Vi3TDhx_>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdejfeejlecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtredttd
 enucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihes
 shgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepgefgheelheejieelhe
 evfeekhfdtfeeftdefgefhkeffteduveejgeekvefhvdeunecuffhomhgrihhnpehkvghr
 nhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
 hrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphht
 thhopeefpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqd
 guvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtohep
 lhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoh
 eplhhkphesihhnthgvlhdrtghomh
X-ME-Proxy: <xmx:E43YaMsB_ctZC1mFyxfaIRhXpwSV2CUAav5U0WhvJoUtdo9n00dwkQ>
 <xmx:E43YaEUvTUnab3g_BeJbAVK2gUfoLTOFuwLWKNImY1O2Pk40meARKA>
 <xmx:E43YaPneH1t_4_RwV5mAKR6ovIJD6kEa_DQ2iHvLCS8v9vrL2YOPGg>
 <xmx:E43YaNazW1gQOFOtX1knpM0-pgWm4z8pToDtCxWrhkLpqiB57GjqHg>
 <xmx:E43YaInkIQf9fBKupRpNruyYw9_dbk7t2Xvqb62D9bp2zKthVP5W6HBo>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 27 Sep 2025 21:19:13 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: fix undefined reference error in ARM EABI
Date: Sun, 28 Sep 2025 10:19:10 +0900
Message-ID: <20250928011910.581475-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  For ARM EABI, GCC generates a reference to __aeabi_uldivmod
 when compiling a division of 64-bit integer with 32-bit integer. This function
 is not available in Linux kernel. In such cases, helper macro [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1v2g4U-0007qV-9M
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

For ARM EABI, GCC generates a reference to __aeabi_uldivmod when compiling
a division of 64-bit integer with 32-bit integer. This function is not
available in Linux kernel. In such cases, helper macros are defined in
include/linux/math64.h.

This commit replaces the division with div_u64().

Fixes: 8ec6a8ec23b9 ("firewire: core: suppress overflow warning when computing jiffies from isochronous cycle")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202509270428.FZaO2PPq-lkp@intel.com/
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index 2dd715a580ac..e67395ce26b5 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -30,7 +30,7 @@ struct fw_packet;
 // This is the arbitrary value we use to indicate a mismatched gap count.
 #define GAP_COUNT_MISMATCHED	0
 
-#define isoc_cycles_to_jiffies(cycles)	usecs_to_jiffies((u32)((u64)(cycles) * USEC_PER_SEC / 8000))
+#define isoc_cycles_to_jiffies(cycles) usecs_to_jiffies((u32)div_u64((u64)cycles * USEC_PER_SEC, 8000))
 
 extern __printf(2, 3)
 void fw_err(const struct fw_card *card, const char *fmt, ...);
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
