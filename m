Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA8D8931CA
	for <lists+linux1394-devel@lfdr.de>; Sun, 31 Mar 2024 15:51:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rqvaN-00075N-AX;
	Sun, 31 Mar 2024 13:50:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rqvaL-00075F-R2
 for linux1394-devel@lists.sourceforge.net;
 Sun, 31 Mar 2024 13:50:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c5UyzxdIo0EMw604i5z0Ke4dcgihgur2UN/owwURGQg=; b=HwvPaHQvjHqjy4ZYRHDIftlTon
 o8ufj0Im6sM9hFfqeTq/uxAnlaxn74HYtKUvGfR49ZYa48eEoC4J1kB0DyMK8sangL07/D7hqZLsL
 m1kAgwuJf4rU3VrUJpG1FWEYwphKs+2GtSvyDc+hugHaH9D2P7rMWqOydntw3bDH2AyI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c5UyzxdIo0EMw604i5z0Ke4dcgihgur2UN/owwURGQg=; b=ZPsgFBozdTOsWooHsgnWUe9pOp
 xtQ3nuzrxlx9wdjy5W7YscR+609qP9s+S6Wg4Fz8zDMPGYVAmfYd9EYlGJsiv2b62IEkJcQKyR+HL
 ZzYAFSYre/GzB4bp1wpmWZ83nc3QTxI+hV/QBlA0LfHU2lIldgt3BbhCzn0zTcMRQFtg=;
Received: from wfhigh5-smtp.messagingengine.com ([64.147.123.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rqvaH-0003zf-DT for linux1394-devel@lists.sourceforge.net;
 Sun, 31 Mar 2024 13:50:57 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfhigh.west.internal (Postfix) with ESMTP id 2E4E618000BC;
 Sun, 31 Mar 2024 09:50:47 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Sun, 31 Mar 2024 09:50:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1711893046; x=
 1711979446; bh=c5UyzxdIo0EMw604i5z0Ke4dcgihgur2UN/owwURGQg=; b=B
 GN/rskTywntgx1+9BZn/VL+LKurmtOAdYtOJEuwkVWWBQ2KiSkupdcF0Thmpmolu
 udzqOHUQa5TM8/16lkcQyEhvvF9DpEDfKh4hGC7FoBMYl87Qu7lZPyaKF1DQO+zn
 a4BZmRicfpBHDOVN8VpPtFmXzmV0awhLIgfF+2XvVJB7Em68+aZQEv5DVJu4PDuY
 RxXakRsRB5pHLbjDDh4kf7dYPxzPnquq9RQp8RmzkjtQYkVqnJ5xhK56SYUvGlRX
 bEMordKvFZPPXll13dYR2YL9sbCmKOb1As88jnBjaj/WLmxf0QWkfLkk47Hfk2PV
 M0/1TIAQzw/rZ/tCGsn8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1711893046; x=
 1711979446; bh=c5UyzxdIo0EMw604i5z0Ke4dcgihgur2UN/owwURGQg=; b=r
 TTDVKf6yrcUCxLSzcD1IwM4I9Q9mqBvRDggEp9aHBUjuLN2tUklCUhbtRcTeHz0c
 C9iHqxo/CajCh0rBgfnOyO3fNXjLqy5AFLKU9ppo73kjU9iIIU5RLQsnNWEzyYL3
 RkUsHE4lDd0qEcEOlWrAk9K922KqoZVBMXQBK/8DwVag1FG6RYKVW/U+avlw02FK
 LqJACUXiG1vFyl9UODO4JLRGg9Bhan+/66jFNu0T0unbdot8JB4uTxJlA2tghxCF
 tIMfgBHe/RAzxPGSC4gUMw09UzwMTJEQ/PbfeKV7xSzwekXGILwWP+SQFSgCq5i/
 sUo2RwERy/rEsITCed7cQ==
X-ME-Sender: <xms:NmoJZixI_AU9pUEJnWe5Yg6Q2xxJ0oPpK3CvTlsodbFiEewm5af08A>
 <xme:NmoJZuReyC3YWfH2LNjyUgX-I7YfLxMjeSQ9DPjIvdS-2zHnpg_UyryoqSg7riOGt
 NG2L2ctxjivVUE0pUc>
X-ME-Received: <xmr:NmoJZkWXIa25ZVWJflZ2fl_4OFvSUrQGlbxw7kg5vR00gglh8d9Nkl-Mn88pf9ox_o8ALxwoJz0gTw8hKX_S0bfoPfeUdemLxJoqnqFd4xnT>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddvkedggeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:NmoJZojStHMnBXWPoCiqt5vH5jTxDltDyhbW3ry7aD8tgYBHB221XQ>
 <xmx:NmoJZkCYx_pV2Pk4_hLoEX7OaPJuNNOpLKWK0z4JVE5zIRKaN8043Q>
 <xmx:NmoJZpLvq3XtvmvUI-zMOI9ck3glJrvy2wFc5Wrp9tJk1cqomtHJYQ>
 <xmx:NmoJZrC-p3xwLzZQIaRHlQaN6XNvr8sWdAOOBVSuQ3lsHGUN5E60LQ>
 <xmx:NmoJZnP1tyh5tHFdILkDV3NQwkgp7UuXNrVqMLa_1keJbvGHQ3jqjTsYwj0>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 31 Mar 2024 09:50:45 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/4] firewire: ohci: replace request_irq() with
 request_threaded_irq()
Date: Sun, 31 Mar 2024 22:50:35 +0900
Message-ID: <20240331135037.191479-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240331135037.191479-1-o-takashi@sakamocchi.jp>
References: <20240331135037.191479-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Nowadays request_irq() is a wrapper of
 request_threaded_irq().
 The IRQ handler of 1394 ohci driver has never been optimized yet, while it
 is a good preparation for the future work to replace the latte [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.156 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1rqvaH-0003zf-DT
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

Nowadays request_irq() is a wrapper of request_threaded_irq(). The IRQ
handler of 1394 ohci driver has never been optimized yet, while it is
a good preparation for the future work to replace the latter.

This commit replaces the former.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index f18019c5d220..ec02708c5f05 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -3750,11 +3750,11 @@ static int pci_probe(struct pci_dev *dev,
 
 	if (!(ohci->quirks & QUIRK_NO_MSI))
 		pci_enable_msi(dev);
-	if (request_irq(dev->irq, irq_handler,
-			pci_dev_msi_enabled(dev) ? 0 : IRQF_SHARED,
-			ohci_driver_name, ohci)) {
+	err = request_threaded_irq(dev->irq, irq_handler, NULL,
+				   pci_dev_msi_enabled(dev) ? 0 : IRQF_SHARED, ohci_driver_name,
+				   ohci);
+	if (err < 0) {
 		ohci_err(ohci, "failed to allocate interrupt %d\n", dev->irq);
-		err = -EIO;
 		goto fail_msi;
 	}
 
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
