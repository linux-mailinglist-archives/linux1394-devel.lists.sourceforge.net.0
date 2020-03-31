Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2D51994F2
	for <lists+linux1394-devel@lfdr.de>; Tue, 31 Mar 2020 13:12:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jJEoi-0007AQ-B4; Tue, 31 Mar 2020 11:12:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mchehab@kernel.org>) id 1jJEoh-0007AD-C0
 for linux1394-devel@lists.sourceforge.net; Tue, 31 Mar 2020 11:12:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=znnn++0xmX4p7xMPEwkJvk8vrrNtNVzGAV1BLf1K6sM=; b=O4a3MzXVxjEBzUl/0JxnnaTOds
 VAjsF1kHLulZ+eOMCjGms9syU7hs7khRygdwZAnrwK65amL75h5Lof35Zq9FzhhQg4AsT4Nc5U8Ye
 4lrzKqZ5rQbm1Ht0OMF9CzLsHKgMcYVMrD+aK9dj41WoyMvmrYOWV8k7bk4pMkmAwDg0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=znnn++0xmX4p7xMPEwkJvk8vrrNtNVzGAV1BLf1K6sM=; b=JdW55FtxyNYgsu+rNonsqAGut0
 RcZBHvF4GzcVGoUGjLNjAjgMkVOn9bg76vBxU6gNtjvcoxYae6bwTnoTJigDAXFSTHoR6/jKAvu9/
 RBBVBFIAQnNs0NijvA253V+myVpydCTmpMC7c+4ufzyxG4pSQABG5qA4x4P/uhkFgmx4=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jJEod-00E0bJ-Vj
 for linux1394-devel@lists.sourceforge.net; Tue, 31 Mar 2020 11:12:23 +0000
Received: from mail.kernel.org (ip5f5ad4d8.dynamic.kabel-deutschland.de
 [95.90.212.216])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C9CD214D8;
 Tue, 31 Mar 2020 11:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585653133;
 bh=rnaWp91KUyfBVUu+eVZ8F5K5c1i5KXQ1a2DX5ze5FoA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=k8GqThGJkyk64k49hbMvMXNHE9Ff1CdcaWWi/z1PxQTSZ7U2oIcXUY4snKLqpjO5K
 4hYyOZl0cLJ3koIiaiHPOx8f/6tQru74fxdF8UHe8ogVio/6LZWQMCqophlXwMoN4s
 ELYFBPHKSPw12UXQfvWKEx7HycYUZhQuSa1bW7+U=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jJEoV-002bqW-9i; Tue, 31 Mar 2020 13:12:11 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH v4 09/33] media: Kconfig: mode firewire comment to
 firewire/Kconfig
Date: Tue, 31 Mar 2020 13:11:45 +0200
Message-Id: <29dd262e7aba56b69a774e85c64b7ea0b729cadb.1585651678.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1585651678.git.mchehab+huawei@kernel.org>
References: <cover.1585651678.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jJEod-00E0bJ-Vj
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This comment should only be visible if the DVB_FIREDTV
config will show.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/media/Kconfig          | 2 --
 drivers/media/firewire/Kconfig | 5 ++++-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/media/Kconfig b/drivers/media/Kconfig
index f37c0c26fa65..dc0cc42d48ad 100644
--- a/drivers/media/Kconfig
+++ b/drivers/media/Kconfig
@@ -192,8 +192,6 @@ source "drivers/media/test_drivers/Kconfig"
 source "drivers/media/mmc/Kconfig"
 endif
 
-comment "Supported FireWire (IEEE 1394) Adapters"
-	depends on DVB_CORE && FIREWIRE
 source "drivers/media/firewire/Kconfig"
 
 # Common driver options
diff --git a/drivers/media/firewire/Kconfig b/drivers/media/firewire/Kconfig
index e7837da5905b..0c1f326f581f 100644
--- a/drivers/media/firewire/Kconfig
+++ b/drivers/media/firewire/Kconfig
@@ -1,7 +1,9 @@
 # SPDX-License-Identifier: GPL-2.0-only
+if DVB_CORE && FIREWIRE
+comment "FireWire (IEEE 1394) Adapters"
+
 config DVB_FIREDTV
 	tristate "FireDTV and FloppyDTV"
-	depends on DVB_CORE && FIREWIRE
 	help
 	  Support for DVB receivers from Digital Everywhere
 	  which are connected via IEEE 1394 (FireWire).
@@ -18,3 +20,4 @@ config DVB_FIREDTV_INPUT
 	def_bool INPUT = y || (INPUT = m && DVB_FIREDTV = m)
 
 endif # DVB_FIREDTV
+endif # DVB_CORE && FIREWIRE
-- 
2.25.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
