Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 38541B481FB
	for <lists+linux1394-devel@lfdr.de>; Mon,  8 Sep 2025 03:21:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E7RUT931ysnggIYqbZAOOnrAGKRhYzsrM/zfTUC76Kg=; b=kCNB7idEy/PYS788O/1N6faFR1
	2qbOCzRFvmhAMcf6qkEfCFyvqWkXXn7FaRyQPUU7iWeKzZIRzvMccFy/CGAntmxwvlnmoskTIlXSL
	pkiH4KQq4UjJ1431NvUAYrBSjj0UdDr80U9mkFvbiAkoUIJ5alro0Ns1X9Zwdl0abyaw=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uvQZX-0003xi-CN;
	Mon, 08 Sep 2025 01:21:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uvQZU-0003xG-8h
 for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uchyU61E1WIGg/6ydRyc3JrxwAu4U5r2JO2FznzjLnk=; b=LcN6H/wmpw6h83mnjvPUHb/xoe
 a7A1oEhGBvYkoH+QM4wW1UmLxqYYkxM8k/fFgrcM7arsg3XqO51ec7DHZ1KykmrDbAxTcsS6tyE2Z
 08X6EyxwvNGPDpgYsPLaLgv2enbQ7G3ufK0IbKRsERd5f776aAeyrzQuoJ+4YJ5MXjxc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uchyU61E1WIGg/6ydRyc3JrxwAu4U5r2JO2FznzjLnk=; b=CyS2ujFMcg5v9FR5L85IzPD6eU
 xwV91Y3KuPbh2JFUR0R9naudf0ojxCwT/CxWFWJnAnLESgGm/6O7DLfY+YQ9C6GO1atTWOFHDAz+T
 svZnJlDDA3UCraQHMoV3vE2tEIstLkK6JlgHxmQgAVcrrSlpD7nqI7DR/ZZIXqSzL9EI=;
Received: from fout-a3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uvQZU-0001j2-KL for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:28 +0000
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
 by mailfout.phl.internal (Postfix) with ESMTP id 0EDA1EC005A;
 Sun,  7 Sep 2025 21:21:18 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-11.internal (MEProxy); Sun, 07 Sep 2025 21:21:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757294478; x=
 1757380878; bh=uchyU61E1WIGg/6ydRyc3JrxwAu4U5r2JO2FznzjLnk=; b=H
 L6eCRIdp4ivv+I2DZSCdwkbr1hiRCnAowS3Wx78c7PMtnnBFazulA/pkQ0rQXuns
 5+Xt6F4eg3b0hidzycnMU5J/5dt7pDbhvQgd3IVFkYR5TsCAZWUUHaSoaaZmxNbQ
 0gwpmcXWkShsLXB0+AEkyFE47KNNB20Kcic51184GkHI9gGpMtvFVznrgHxL6DBK
 yajFmocniauz/CdiRasxS173Aq0bXMhQpk6DPVLGeYSLtmBZjrIFlSxPMhwSuRdn
 vqeyhuWPFvsKMzOS9ynko0mKmSL5jJCaTD8JYYIPgLb5iWSN3r17n9rvgNvcMOvT
 5upRWu9L/1DK/6JoIMSCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1757294478; x=1757380878; bh=u
 chyU61E1WIGg/6ydRyc3JrxwAu4U5r2JO2FznzjLnk=; b=neymfP6iC68HIfFfw
 SpGTYrE7pgR7uLD0RKGp2zRfw5kUyqcm1VXAl1+Klr1ROtEQUC5fv+5CbrNfee4/
 o9QbSOYFrwDsQhGWmQC1IGYLq5yxtWuM2CPCCFFipYBPEJxVAJL1TmoHs4qiciR8
 0RtGQ8T3maVE3XidVGY1dAMEJLNoW6NCLBNFQZA4nNFnPsF+mx6Hu4tpmllRbvoU
 nSdLDrtz0myfoSxqLyprmQIxuYKnDNtFwhu/yzN4SwpvA+mAZvX9f8yZTcFSY+Tf
 CNHVbmsUsD6SxjQ9QX+65vdQYL9pKoo9N2EmO0Dc/feOH/4Zw5W//fkHhvVtPOun
 6KErg==
X-ME-Sender: <xms:jS--aGGtVeJSPzNEQIB45Rs4uSsFpyyabXb9nbxXrv42KlEaQMKzYA>
 <xme:jS--aAR2cjVoGhoz_UNjsEJIikxFcgct6gJSJY4HNr5nbCF9QzAV-50wUEzEtSkEQ
 hd2uFXIfAv6ItA1twY>
X-ME-Received: <xmr:jS--aCHDC3nsCRRLjAmvteRTBKTVFtLEC_akaahIQXaImoCj2ZAp_i5ZwWaLaolalaA9S-plIl0ROfXvzdfY-LPGsH_z1Xe9-C7p_mD5WZk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduiedulecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgf
 duudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfu
 ihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:jS--aM9tUnf2JgOYPxJ-1eL-poQJD8UqcdHZgtumibuBH2ItNNweeg>
 <xmx:jS--aMKyZkv4-oG_G5dbYoViDQOZQ_Qx8NIz04-TafxP8Cqk-tc3Xg>
 <xmx:jS--aPZwqpqmK_EJ8QHHOQEFES2eLzdyUFHjksbJTEYbemQtezf0bg>
 <xmx:jS--aGKgoVuUWuirSayxIcJ2ZXQL3pKYMUSfckUjG8lfvkTVTVcxuw>
 <xmx:ji--aFoGdVuRsTbG7xlt3AiPW6QGJYHsTYI_6wYTty2CvetNAV31ggF_>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 7 Sep 2025 21:21:16 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 03/11] firewire: ohci: use return value from fw_node_get()
Date: Mon,  8 Sep 2025 10:21:00 +0900
Message-ID: <20250908012108.514698-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250908012108.514698-1-o-takashi@sakamocchi.jp>
References: <20250908012108.514698-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The programming pattern, referring after increasing reference
 count, is supported by fw_node_get(). This commit simplify the programming
 pattern. Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> ---
 drivers/firewire/core-card.c
 | 3 +-- 1 file changed, 1 insertion(+), 2 deletions(-) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1uvQZU-0001j2-KL
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

The programming pattern, referring after increasing reference count, is
supported by fw_node_get().

This commit simplify the programming pattern.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index d128c7a8bf5f..41902dcc10a0 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -306,8 +306,7 @@ static void bm_work(struct work_struct *work)
 
 	generation = card->generation;
 
-	root_node = card->root_node;
-	fw_node_get(root_node);
+	root_node = fw_node_get(card->root_node);
 	root_device = root_node->data;
 	root_device_is_running = root_device &&
 			atomic_read(&root_device->state) == FW_DEVICE_RUNNING;
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
