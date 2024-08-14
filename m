Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE24951B94
	for <lists+linux1394-devel@lfdr.de>; Wed, 14 Aug 2024 15:12:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1seDnz-0002Ka-HC;
	Wed, 14 Aug 2024 13:12:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1seDnv-0002K4-4D
 for linux1394-devel@lists.sourceforge.net;
 Wed, 14 Aug 2024 13:12:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6eQz40i7Qbf0+e3nqYJywvuPegD2nGTCSj//GbNl60U=; b=Kmy/6vBZFaSLl9LtvM8gKImdVN
 JNRA34eQlfAwBkMWKR/bE3m2Z3cVnV3ZQeK571rLOMQo/hJpHGt6X3p5GuWTeQhbBEXu6Fc4d0HQQ
 R+QR2gNVC/uPWlGj6npraAn1XslE7DosaRSqM+8a+Ys7nWWKeCg1Lxe6Qo3aQhsyVRck=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6eQz40i7Qbf0+e3nqYJywvuPegD2nGTCSj//GbNl60U=; b=l+hSZve0Vtod78VS0qUoxai62u
 lU66fgiyFZet+Gg5KtH9V+70bHIiwBMZjGW5bbPS3Amw1UKlkeICMduSRYD5HRegfOyIkG62NOcur
 LoXNhhEe5cgRCv1LgJo/3aZ5i48EoM3jdRBeWmATxDGqe1ZhYUZerionG0HYzMcpEzc0=;
Received: from fout4-smtp.messagingengine.com ([103.168.172.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1seDnu-00080c-9m for linux1394-devel@lists.sourceforge.net;
 Wed, 14 Aug 2024 13:12:43 +0000
Received: from phl-compute-06.internal (phl-compute-06.nyi.internal
 [10.202.2.46])
 by mailfout.nyi.internal (Postfix) with ESMTP id A01071389445;
 Wed, 14 Aug 2024 09:12:31 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Wed, 14 Aug 2024 09:12:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1723641151; x=
 1723727551; bh=6eQz40i7Qbf0+e3nqYJywvuPegD2nGTCSj//GbNl60U=; b=F
 q/CHCG22HXcNnD+Lu+tzXCbEKOS5teQH3+7frIt3/9g0YQVVmdkNzzFD3PObw1dO
 JlF1mxqeBWsPYf6nvUGSCZgJBbGoGyah8umKuHYRk30yLkqdoThRlxKg9apRx2lC
 7Lqip80a9JscNRqm/JuhaI31VvGSGwz5Djf9EXigOdv8xH+Qal61OwLtnEaG/Geh
 Iw2+lGCedWdTVS4NG10DhnW1MYPxRNRB4PTHkzeSx+pUOEP0/RTGcU+3toGeWJsT
 AwUvqQ0B+n2DjMQ+jSTHGMNDK+4V0YAqwbSda54e2LR4C9WW7cWG0JbcgoXHLwT+
 Fd0gicNjR0uc67cjav4Qw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1723641151; x=
 1723727551; bh=6eQz40i7Qbf0+e3nqYJywvuPegD2nGTCSj//GbNl60U=; b=f
 aSfH/meWOQpAk66Nq2mMFcLcJnf+P64H2D70u526GD77MdComXDmljw6HTorZPzu
 L44yKkLAzCA3Vldlb77ZvzLLD8XiuHQaHENF6v9zfR+CyrvX+T8EuqegjNvL4Sx+
 3TRmuDdCaJl5taovmJMA8jrZNe7EoiNLc+9gF6fxB3htBwGjugJAw6qKguKQN7tI
 S+7TydKqLAuyIjhSJ4ludL13apZHQgcCcMIW1+3N2D/4oV3eDKc2HrZex1E/OLQf
 RxsTajRRe9WPC6u1Z9/AeS3ovReu3xsSJYsuwBDg6vMGzRT1L8RNwoK3mshyJffh
 MKjz2wyqt1zwuO4fs9QOw==
X-ME-Sender: <xms:P628ZiK_WzuwrrAoqEICdzaVaP3LpyGhbm4DszHOdEVqmUtsVcohRA>
 <xme:P628ZqIJF6uMpYXGe3KWg1eTZsiGpLlSIiZyfE65FP7t1xcyls925P1FfUKUvQPfe
 dOSzZ1oYDiZMRjTcJc>
X-ME-Received: <xmr:P628Ziv-LuA6P6vexyCmuXaQtuhp8-zYw6IZNCNyEX2p_AdIm2_pqzdm7h-AhF0iCZButUl7TH79B817S-k9roceecqZYccpyX6YozNeq6oS>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddtgedgieefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpedvjefgjeeuvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdff
 kedvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedv
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:P628ZnZG5IpHRmigA4lvEyeM5WViFwYYcSN7WI_FmjrQuY0Uv-O9hQ>
 <xmx:P628ZpbIi7-2qdWsO-GwPYxhRLkkfUSq3i0truLVtEuJD77zTxqQCQ>
 <xmx:P628ZjDI6aNfCdQETjn3uSO34Idt6hOnKdaFzat3xteHk0f2_iHr9A>
 <xmx:P628ZvbtQnPa2gbM2_og3TP5QhzBD_qMZYzq_RP_aTxa2IBcqGhayQ>
 <xmx:P628ZokSE2eCBFQFDSs_gm1z6wYRmE9fBWyYIK1oTCb24x1xevO327rW>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 14 Aug 2024 09:12:30 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/3] firewire: core/ohci: minor refactoring for computation of
 configuration ROM size
Date: Wed, 14 Aug 2024 22:12:22 +0900
Message-ID: <20240814131222.69949-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240814131222.69949-1-o-takashi@sakamocchi.jp>
References: <20240814131222.69949-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The size of space for configuration ROM is defined by IEEE
 1212. The start and end offsets are available as some macros in UAPI header.
 This commit uses these macros to compute the size. Signed-off-by: Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core-device.c | 3
 ++- drivers/firewire/ohci.c | 2 +- 2 files changed, 3 insertions(+),
 2 deletions(-)
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1seDnu-00080c-9m
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

The size of space for configuration ROM is defined by IEEE 1212. The start
and end offsets are available as some macros in UAPI header.

This commit uses these macros to compute the size.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c | 3 ++-
 drivers/firewire/ohci.c        | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index 32ac0f115793..f71e118ef60a 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -564,7 +564,8 @@ static int read_rom(struct fw_device *device,
 	return rcode;
 }
 
-#define MAX_CONFIG_ROM_SIZE 256
+// By quadlet unit.
+#define MAX_CONFIG_ROM_SIZE	((CSR_CONFIG_ROM_END - CSR_CONFIG_ROM) / sizeof(u32))
 
 /*
  * Read the bus info block, perform a speed probe, and read all of the rest of
diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 979f1e1f2d16..53132eae37fe 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -174,7 +174,7 @@ struct iso_context {
 	u8 tags;
 };
 
-#define CONFIG_ROM_SIZE 1024
+#define CONFIG_ROM_SIZE		(CSR_CONFIG_ROM_END - CSR_CONFIG_ROM)
 
 struct fw_ohci {
 	struct fw_card card;
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
