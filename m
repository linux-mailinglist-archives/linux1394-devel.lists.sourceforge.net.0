Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E387214F6
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Jun 2023 07:45:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q5gYR-00055b-CW;
	Sun, 04 Jun 2023 05:45:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q5gYI-00054h-ME
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Jun 2023 05:45:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JXJ2NslYvRvgyn5YNav5urVf+K2fXWuI2M0Mevtt7tE=; b=d6a5LESZlwvwL65iQcybuZZ040
 jRpvmkrM2h0rlyl5pFA0hX6ugO8rd4V3MLMH115vAfdWaX/fuRZ1IzqX4ehQ5YxMNaB3AYf3AvHt0
 v7SJ7SIc7TXVXrJZnpuS9qcl9x/d9k9C0ivQkZEuDOTDYfm1AdmcZBqF4lWld4olx7HY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JXJ2NslYvRvgyn5YNav5urVf+K2fXWuI2M0Mevtt7tE=; b=VhYhkrP1kreoLfiGSzk1C6L89f
 P/yuCcnqWzREZm6zN6QmYwCfEMyBmQ4RKNjq67SBGcRk+JDtZ2Fi03hUptNQN8l3zkXZ4yvNdvUnH
 anJQ9WHIPj0wShOx9/+R+A5+BUzfW5Au96gTCFSngm0kL3TfoLM9+UWhaqiRxC0QCQAQ=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q5gYH-00032z-IU for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Jun 2023 05:45:18 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 180145C011C;
 Sun,  4 Jun 2023 01:45:07 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sun, 04 Jun 2023 01:45:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685857507; x=
 1685943907; bh=JXJ2NslYvRvgyn5YNav5urVf+K2fXWuI2M0Mevtt7tE=; b=I
 ScD5GIrWiztYox8MM7twV5QDUCP8m7sHLqt9ppAGB3Iirq9eNw7GtczB5aLwpYiM
 Ny2xTcx9WU3uFsuK/HpX1xKbxKoNA2RoZjhsw6UqNfJgFQwRYgww3scsz2ci5ZD1
 1KwlkD8vcDHo6q0dMsR6eiXSeN2EJaWWPQE9KpVGiALasMYokMWlsw/0HhdVvZ+i
 d9ZCasfLMwM30UwaYaM8jmuxjzZLasISUON6KC/bSO5pcTvmRXWutf60Fer4eZdq
 gYAi59KstK54vrMg27bfw61PY8WS5LFvy+L2ghvN1Ux6AgGRinkJS6NVC7rNX6JP
 VZtAzdOlywrPgIWopjbfQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1685857507; x=1685943907; bh=J
 XJ2NslYvRvgyn5YNav5urVf+K2fXWuI2M0Mevtt7tE=; b=hswlGVHWgKOEG9WNF
 19pfyFY2rDxvHhAf/w2EqJmzdl3EAncc8p0SXXw8mCJu79O24N3EgwTnHjSts1CV
 VW7E5Uv0BlJR2YOv6wZzbboS941eCdypicIV17KXtxWVj6QuikOhRa+357teFSSy
 8OjaCU1TNIQGhEo7lfITARLncXDvqF8Y3yvUTkbojZ3gKbr7INu8EbKYgG1HBnzZ
 JPww3gnssE3ASb2IWwPpqAULqosKvNqSkqgoXZVg1eFrzd6qsl3Z3MKdF9YLlAQ3
 csYg6s+l6zMRZZejRkmnhmEWf7XOdyTt2DvUSTxrlv4iyyv+dW+gb7VdCWyJAYNQ
 oi5zw==
X-ME-Sender: <xms:4iR8ZCR_A39O_PvmrLRnwmvJkIF68WBOlqBgmC2Y3qeXUvfYYS00rw>
 <xme:4iR8ZHyW3e3MCREa64jojZxQ5-PHyGbLeq1qDDE88-_XKq4LfCHNIvsp2T2opVmmx
 8czF0tK06kW0MKPfSo>
X-ME-Received: <xmr:4iR8ZP3SPJZUndLz6zMdsbB9jp_Fykd3Hs5bcaY_RjwTrK8cHUKeypGRMIz-VfXWvo0Ih9drubazi5_7F0CXDPoH7dk1WJ-zXJVQ-QhJHF8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeeliedguddtudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevfefffe
 ektefgveegfeelheffhfeujedtjeevtefhkeevkedtjeejvddtjefhjeenucevlhhushht
 vghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:4iR8ZOCPlMm9ZBAN5JEy7aAz6OPxuGa9VpmMK8YT4EfXb7ykRfxKlg>
 <xmx:4iR8ZLhGSGwuOLCu-i9hbkNKLQXRUX7T7fMENm0xJ-TSgfBs_EWspQ>
 <xmx:4iR8ZKoI1kzpt5GoC8xYAGIFZvuZSY73y9cTrPIMa7KkZUqZpPHDVQ>
 <xmx:4yR8ZLJywO6vjFUkQXOmrobD506JzFWW6Lcoa9xX4TSQoYqb4HGaVA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Jun 2023 01:45:05 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 8/9] firewire: ohci: use devres for content of configuration
 ROM
Date: Sun,  4 Jun 2023 14:44:50 +0900
Message-Id: <20230604054451.161076-9-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230604054451.161076-1-o-takashi@sakamocchi.jp>
References: <20230604054451.161076-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The 1394 OHCI driver allocates DMA coherent buffer to
 transfer
 content of configuration ROM. This commit utilizes managed device resource
 to maintain the lifetime of buffer. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/ohci.c | 27 +++++++++ 1 file changed, 9 insertions(+),
 18 deletions(-) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q5gYH-00032z-IU
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

The 1394 OHCI driver allocates DMA coherent buffer to transfer content
of configuration ROM.

This commit utilizes managed device resource to maintain the lifetime of
buffer.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 27 +++++++++------------------
 1 file changed, 9 insertions(+), 18 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 21eb13ea4dad..298667963538 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -2052,8 +2052,7 @@ static void bus_reset_work(struct work_struct *work)
 	spin_unlock_irq(&ohci->lock);
 
 	if (free_rom)
-		dma_free_coherent(ohci->card.device, CONFIG_ROM_SIZE,
-				  free_rom, free_rom_bus);
+		dmam_free_coherent(ohci->card.device, CONFIG_ROM_SIZE, free_rom, free_rom_bus);
 
 	log_selfids(ohci, generation, self_id_count);
 
@@ -2385,10 +2384,8 @@ static int ohci_enable(struct fw_card *card,
 	 */
 
 	if (config_rom) {
-		ohci->next_config_rom =
-			dma_alloc_coherent(ohci->card.device, CONFIG_ROM_SIZE,
-					   &ohci->next_config_rom_bus,
-					   GFP_KERNEL);
+		ohci->next_config_rom = dmam_alloc_coherent(ohci->card.device, CONFIG_ROM_SIZE,
+							    &ohci->next_config_rom_bus, GFP_KERNEL);
 		if (ohci->next_config_rom == NULL)
 			return -ENOMEM;
 
@@ -2480,9 +2477,8 @@ static int ohci_set_config_rom(struct fw_card *card,
 	 * ohci->next_config_rom to NULL (see bus_reset_work).
 	 */
 
-	next_config_rom =
-		dma_alloc_coherent(ohci->card.device, CONFIG_ROM_SIZE,
-				   &next_config_rom_bus, GFP_KERNEL);
+	next_config_rom = dmam_alloc_coherent(ohci->card.device, CONFIG_ROM_SIZE,
+					      &next_config_rom_bus, GFP_KERNEL);
 	if (next_config_rom == NULL)
 		return -ENOMEM;
 
@@ -2515,9 +2511,10 @@ static int ohci_set_config_rom(struct fw_card *card,
 	spin_unlock_irq(&ohci->lock);
 
 	/* If we didn't use the DMA allocation, delete it. */
-	if (next_config_rom != NULL)
-		dma_free_coherent(ohci->card.device, CONFIG_ROM_SIZE,
-				  next_config_rom, next_config_rom_bus);
+	if (next_config_rom != NULL) {
+		dmam_free_coherent(ohci->card.device, CONFIG_ROM_SIZE, next_config_rom,
+				   next_config_rom_bus);
+	}
 
 	/*
 	 * Now initiate a bus reset to have the changes take
@@ -3753,12 +3750,6 @@ static void pci_remove(struct pci_dev *dev)
 
 	software_reset(ohci);
 
-	if (ohci->next_config_rom && ohci->next_config_rom != ohci->config_rom)
-		dma_free_coherent(ohci->card.device, CONFIG_ROM_SIZE,
-				  ohci->next_config_rom, ohci->next_config_rom_bus);
-	if (ohci->config_rom)
-		dma_free_coherent(ohci->card.device, CONFIG_ROM_SIZE,
-				  ohci->config_rom, ohci->config_rom_bus);
 	ar_context_release(&ohci->ar_request_ctx);
 	ar_context_release(&ohci->ar_response_ctx);
 	pci_disable_msi(dev);
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
