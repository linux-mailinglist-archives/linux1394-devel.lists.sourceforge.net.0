Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC837214F5
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Jun 2023 07:45:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q5gYP-00055L-Kr;
	Sun, 04 Jun 2023 05:45:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q5gYI-00054X-3A
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Jun 2023 05:45:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+SNfvwUr3HkWtVX9bEAgYqWbf/gfUOCX+tboiD/Fg6E=; b=ivOc9cj/ogNhYkeD4dIzrB43Vt
 zaBFL1jp2QUtcjd7jjrwvHYg0KlyQGRfgZhqU9ZYGMp1+yJl3wc8QscFu72xMfyt1AwHpWf5PIWmp
 w4a71JQYre3i1Y2jzyHSLiis2zn+FrUMosXB3TGtx0QiWSaPgN4gIy25TO1Oofh5mEEA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+SNfvwUr3HkWtVX9bEAgYqWbf/gfUOCX+tboiD/Fg6E=; b=AwBa2Nm2L7PsPyDtxFQsfF4lBn
 QWBLI9RgpAAEttSVLgM8KrFZWwlNZC01NW1C0T6X6ptAAIxXrgXw4rksu8PJ3nglDg4BZ0grU9W2B
 ad8iFABR6sJqiS899cxprs7ZKic1HGADYblUphDceZAPYwD/BYXZJTOCEgRk7biDvauQ=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q5gYH-00AcRM-Hx for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Jun 2023 05:45:18 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 2CDF75C010B;
 Sun,  4 Jun 2023 01:45:03 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Sun, 04 Jun 2023 01:45:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685857503; x=
 1685943903; bh=+SNfvwUr3HkWtVX9bEAgYqWbf/gfUOCX+tboiD/Fg6E=; b=U
 BKnq3yjaySl29OZGcuVREvQa7DIsvzGjsohKjledhFIpHuB+S1t0tmGcbSXr5cuT
 U0BrjF+Ul6dNeuxKnY1NPpFWcDkOd0mfFt65ZYmcWCnIsg6AAjgnmgesb51knJv4
 SXP6lmhR3DlSHSJHNng37Fw8vbS5W57BUjifNR4gTfQtSdbM/dvBYLmoNuNFHYzV
 XeQ50z6xFcLtUZ9wyqsDzqTdwqMq9jJGBkVpOrc8QteyIE1URHXbZXcbrw+kXye7
 ZqS71cW8lEMieirU/yTGTYFR1kaiIU+vVpVbE/UMhEY/DTqAlsFHQ3C7DsORiQnV
 RM1HsbK7ea9dMSEt3xuQg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1685857503; x=1685943903; bh=+
 SNfvwUr3HkWtVX9bEAgYqWbf/gfUOCX+tboiD/Fg6E=; b=LNqi2PjRROO7RKxpJ
 yHd/hNIAkT+GCDHleqUSADoh+fg7o4h5WP74eC3oDRYG6EKfYBYnKZz3AcP//k+n
 j/0UdvBVPPHmeh4n/DsW+McNVTukQF02fP5CLtcrWNJS/yC0ek3oYgg1roeK3FYI
 ScXei7pSOIH3aNPynV5xtJtn+/xyMb0oRp4KYJlagg05VcJnymaeC+5AakUjh5YA
 Cvd6c2STF1wAOwgAlYz9Tq1NxhIkZAvYn3ymlOEl7HmSUXaJNkWZnONR+zq3N+fC
 2Z1u0CaGCD/vh+mK8Qn6AgF4F7vhMUGGcxW3VqYGxu30zKFXMITm5boEgiOpTo8c
 LtcWQ==
X-ME-Sender: <xms:3yR8ZIiKIX02ThH__93_mW-jqro3tbwYbC7Nck870qugw4Yzi6Dv9g>
 <xme:3yR8ZBBIFFfOcaHiY0NmgJ94aegwr_e4XSnccksuvoTU--D-F1i095NiwBQGowpXc
 CJHbuVR2RCCwFl_QrU>
X-ME-Received: <xmr:3yR8ZAFngZJSnQ8drCD-Tb3ROajvjy0TBUNgnr6a6HSRZbDWo5Z7Fe21Nhjm-qkJXajteJ5suxUyUaTJsI-bOUO3ewO6ioo04t-bJIt2pdo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeeliedguddttdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevfefffe
 ektefgveegfeelheffhfeujedtjeevtefhkeevkedtjeejvddtjefhjeenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:3yR8ZJQtc7t4CAgPtQPjggMx6VafvIJVimbkMJbiTHBCPKoGrUMZoQ>
 <xmx:3yR8ZFwkseMtEY8ak5MUXRUhiWFmDrdXgVNuwqkEv2l2Obg6fMkfCA>
 <xmx:3yR8ZH6_zeYEgrLUwBR0nbF86znG9F9opNo8XENOYX3ZKmq7G_D9dw>
 <xmx:3yR8ZDYDGuzKLkrOxr9ScSx7K0aLFQ_kDOY9OQM2r0TsLAdvqwxplA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Jun 2023 01:45:02 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/9] firewire: ohci: use devres for requested IRQ
Date: Sun,  4 Jun 2023 14:44:47 +0900
Message-Id: <20230604054451.161076-6-o-takashi@sakamocchi.jp>
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
 Content preview: The 1394 OHCI controller register handler to single interrupt
 number. This commit uses managed device resource to maintain the lifetime
 of requested IRQ. Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
 --- drivers/firewire/ohci.c | 12 ++++-------- 1 file changed, 4 insertions(+), 
 8 deletions(-) 
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
X-Headers-End: 1q5gYH-00AcRM-Hx
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

The 1394 OHCI controller register handler to single interrupt number.

This commit uses managed device resource to maintain the lifetime of
requested IRQ.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 3b31d90781fe..cb6b43e3f67e 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -3697,17 +3697,16 @@ static int pci_probe(struct pci_dev *dev,
 
 	if (!(ohci->quirks & QUIRK_NO_MSI))
 		pci_enable_msi(dev);
-	if (request_irq(dev->irq, irq_handler,
-			pci_dev_msi_enabled(dev) ? 0 : IRQF_SHARED,
-			ohci_driver_name, ohci)) {
+	err = devm_request_irq(&dev->dev, dev->irq, irq_handler,
+			       pci_dev_msi_enabled(dev) ? 0 : IRQF_SHARED, ohci_driver_name, ohci);
+	if (err < 0) {
 		ohci_err(ohci, "failed to allocate interrupt %d\n", dev->irq);
-		err = -EIO;
 		goto fail_msi;
 	}
 
 	err = fw_card_add(&ohci->card, max_receive, link_speed, guid);
 	if (err)
-		goto fail_irq;
+		goto fail_msi;
 
 	version = reg_read(ohci, OHCI1394_Version) & 0x00ff00ff;
 	ohci_notice(ohci,
@@ -3720,8 +3719,6 @@ static int pci_probe(struct pci_dev *dev,
 
 	return 0;
 
- fail_irq:
-	free_irq(dev->irq, ohci);
  fail_msi:
 	pci_disable_msi(dev);
  fail_contexts:
@@ -3759,7 +3756,6 @@ static void pci_remove(struct pci_dev *dev)
 	 */
 
 	software_reset(ohci);
-	free_irq(dev->irq, ohci);
 
 	if (ohci->next_config_rom && ohci->next_config_rom != ohci->config_rom)
 		dma_free_coherent(ohci->card.device, CONFIG_ROM_SIZE,
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
