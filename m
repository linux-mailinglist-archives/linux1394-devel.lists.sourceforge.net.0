Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 636BC191313
	for <lists+linux1394-devel@lfdr.de>; Tue, 24 Mar 2020 15:26:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jGkVs-0006Ds-Mr; Tue, 24 Mar 2020 14:26:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mchehab@kernel.org>) id 1jGkVq-0006D0-1D
 for linux1394-devel@lists.sourceforge.net; Tue, 24 Mar 2020 14:26:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EKYo49Oi9izuDOBf7GgNfDKw+XazHfG1P1nLVTqVdlk=; b=H2SKKGEkdF41jKYgrxkROiJnB7
 qJvUi2QPVeYM1mAcpfA3w09C/kzgAYxCKCNF9W30mhc/TuxnPAZqQldu4Z933oWyW2ATTQea6xxsL
 hr54+DtbH2+psjZw+Ouv6EkxgeNIT/I5PYkUI5LYNYyLpBNVYcnZfco3GvV01aKKTGXk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EKYo49Oi9izuDOBf7GgNfDKw+XazHfG1P1nLVTqVdlk=; b=lwCyv3xEKnCgjWDpBnpgoHJ+Yu
 ommY4gDF60geiW7UKLMbssQqaqYbAzoAEYngsxjFZNN8TL4Vt9h8LE3wIut2vdD7IGhvGLNN44G6d
 sGKwg34BYTyX6Av9weljI/7z6eBmGNLcjhmRO+7fBPyv/ioDCQ6RiZTyzlgDlX9s7g6M=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jGkVj-005iXD-Jy
 for linux1394-devel@lists.sourceforge.net; Tue, 24 Mar 2020 14:26:37 +0000
Received: from mail.kernel.org (ip5f5ad4e9.dynamic.kabel-deutschland.de
 [95.90.212.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF19D218AC;
 Tue, 24 Mar 2020 14:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585059986;
 bh=siNRHVsZSzIvazHmR1WEv2+cQMZrL0G006nOx0Nkxo8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=i8tKfJ1A6co6Qh1YEAA3jDwoogMKcUN8vf2mma/c3wzMnyzgOVheRkO+lO7GTpaae
 9hJ8xqLCDJDGBZdM36xRI5BMi5cdKtmryy6UtFSCStQl8K5DVimyowQzXPUPWBqsjU
 hiITxwMGnKG/nwYwucJH9/Qhj8+kxvEdG789iK3w=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jGkVc-00267h-5A; Tue, 24 Mar 2020 15:26:24 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH v2 17/20] media: Kconfig: mode firewire comment to
 firewire/Kconfig
Date: Tue, 24 Mar 2020 15:26:18 +0100
Message-Id: <3ffedfd6d10ff653ebcb5c8c6f72e27e627e446e.1585059897.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585059896.git.mchehab+huawei@kernel.org>
References: <cover.1585059896.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jGkVj-005iXD-Jy
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
index 7d4088cfe3ef..026a1151273c 100644
--- a/drivers/media/Kconfig
+++ b/drivers/media/Kconfig
@@ -186,8 +186,6 @@ source "drivers/media/mmc/Kconfig"
 
 endif # MEDIA_EMBEDDED_SUPPORT
 
-comment "FireWire (IEEE 1394) Adapters"
-	depends on DVB_CORE && FIREWIRE
 source "drivers/media/firewire/Kconfig"
 
 comment "Media ancillary drivers (tuners, sensors, i2c, spi, frontends)"
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
2.24.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
