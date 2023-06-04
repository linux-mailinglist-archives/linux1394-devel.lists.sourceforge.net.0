Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5157214F4
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Jun 2023 07:45:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q5gYR-0006N1-IW;
	Sun, 04 Jun 2023 05:45:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q5gYI-0006Mh-4T
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Jun 2023 05:45:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8Dgw6YabWHeE3yFvx/mYzF63i5Jthx10ANgrdir9jFg=; b=A9lahMKDJf9LH9Z4akYoobO3uW
 BBKfjLmd7xW43q3ldJ96Sjak9ZLZiBsB4cSmzI1vE5kLqDr/zsYPxqAoKs9Ds0lvwQKY/nYKLEvxu
 p8vuVmh0ZTX2lSBPEQtXZd83OBUmz807kkUAofGitFSiAIlvdJxjfu9t5/HZUaZnt+pc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8Dgw6YabWHeE3yFvx/mYzF63i5Jthx10ANgrdir9jFg=; b=Owh5vrlHf1CzI0fN1k+6G75fM7
 C1hLVaTuixS9MCQ6Z24jiyRDbQ6jn0VeX7Lbtml8BdZ/tiBwJy6IN1GhxY+GofV4/JMCQiSFABQdu
 VpGM15kLmK+Bs+LcMhG+uxlKNkazTWWECdQR1Rdb+bP40T85JBUgFHdmvcWws1Rfh3ks=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q5gYH-00AcRR-Qy for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Jun 2023 05:45:18 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 68DCE5C0111;
 Sun,  4 Jun 2023 01:45:08 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sun, 04 Jun 2023 01:45:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685857508; x=
 1685943908; bh=8Dgw6YabWHeE3yFvx/mYzF63i5Jthx10ANgrdir9jFg=; b=c
 8VkNef3khD1nmcuYxU0YMDaeIkjKmM6/dQ1C78y+R1DdGXEVzX6duY9f9yy65bA3
 QOUsLgIYTFRK6BeZHtsaGnbIfMrbuj2MTtnYD581VSqcMqWhbWi987VHOObzcj0X
 HAFs0yNmqKS+PyjNUrFVRImSH7YijYlkhjQxiVfAJdQAIfak+fgTPOld9HvQRslS
 DrhMip0HfOkbDDxT0yph/t1khcHD1T54Ig/FgB6bEacwYruzxtwg4p7Sm3r/KdlK
 qHOJVKNf2/f3UeJGcPIwbPre+PowOUphnziy/uP7DUWSKRZrCPYrrIMUrHn7F48P
 mD9vL4W1riC3oXA1/+qVA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1685857508; x=1685943908; bh=8
 Dgw6YabWHeE3yFvx/mYzF63i5Jthx10ANgrdir9jFg=; b=rUWG8i8nOUhPylllv
 5T9v78GAfyD+Pt8BFDUwCMaTvVnwD9GghX03WFuysDoa69Ql1KHd7Ogpk18kyWvj
 az0EUW3TFPzfT9rmS6aFuTmdutWE/nheL9jrAgSkG2ovt9A2X/GGf2bh7Hqr5eVB
 7rbm2ogery0tw1DAmmJo1YIl7kFLue2+lq3eNVl0kCvUkX+5JEQvBHHw0dZ3batz
 BpROmzHieiaSq8v+TX3tgu5WX1qNPGEScG3qOlbgeyG6pIV7ccIbg4C98fBK+1A1
 vmkGtFxR4KbTtS1W6jAwTu7ki7yte6te9w8GE6OuaLAu9qhcuIvxcxLQcPAuhQmp
 qrOcg==
X-ME-Sender: <xms:5CR8ZNa76eQXyIUT9e-QFrRKS5dBZkZlJY4Rb-E7fxgktQ3SHd9KpQ>
 <xme:5CR8ZEZahXvfClBKdkx1dYVgLqw_8AqidF0rT8Pc5ANnH9r1TYC98_WDEzZDMMsGO
 lHOOeXM5C1No1IJ1KI>
X-ME-Received: <xmr:5CR8ZP-rykrPuokG6X8OBhujoD4q3ymkmwHk4HySpj8JP8lsyRg8NzPPTJkQNmYObEHGWQLaNO-Wg2cm2ISqOPLrFT9L1bXnlcO87rQFRhg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeeliedguddttdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevfefffe
 ektefgveegfeelheffhfeujedtjeevtefhkeevkedtjeejvddtjefhjeenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:5CR8ZLrByeTLgT6nlWR8MkBfszt4OjUmgR1fFbIndQ2YIeXmX1N_zg>
 <xmx:5CR8ZIpcsM1osDqlGuawdNA-jI_9OcMH0t5vinWHFyM4DazF-YxXMw>
 <xmx:5CR8ZBT_WYMHSKst6EJg3VwpN60UtvDrxXT5KHRKQQ1sVMBzYhuE7w>
 <xmx:5CR8ZPSpG-p-1GtXBTBumhIiy8g5jnS5WCuZqf7wXMSqa2UgBN0m9w>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Jun 2023 01:45:07 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 9/9] firewire: ohci: release buffer for AR req/resp contexts
 when managed resource is released
Date: Sun,  4 Jun 2023 14:44:51 +0900
Message-Id: <20230604054451.161076-10-o-takashi@sakamocchi.jp>
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
 Content preview: The 1394 OHCI driver allocates several non-coherent DMA
 buffers
 for AR request and response contexts. The buffers are mapped to kernel virtual
 address (VMA) so that the first page locates after the la [...] 
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
X-Headers-End: 1q5gYH-00AcRR-Qy
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

The 1394 OHCI driver allocates several non-coherent DMA buffers for AR
request and response contexts. The buffers are mapped to kernel virtual
address (VMA) so that the first page locates after the last page. Even
when large payload of packet is handled crossing the boundary of buffers,
the driver operates continuously on VMA.

No kernel API is provided for this kind of mapping, while it is possible
to release the buffer when PCI device is going to be released.

This commit moves the call of release helper function to the callback
function of release resources.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 31 ++++++++++++++-----------------
 1 file changed, 14 insertions(+), 17 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 298667963538..7e88fd489741 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -677,6 +677,9 @@ static void ar_context_release(struct ar_context *ctx)
 	struct device *dev = ctx->ohci->card.device;
 	unsigned int i;
 
+	if (!ctx->buffer)
+		return;
+
 	vunmap(ctx->buffer);
 
 	for (i = 0; i < AR_BUFFERS; i++) {
@@ -3556,9 +3559,13 @@ static inline void pmac_ohci_off(struct pci_dev *dev) {}
 static void release_ohci(struct device *dev, void *data)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
+	struct fw_ohci *ohci = pci_get_drvdata(pdev);
 
 	pmac_ohci_off(pdev);
 
+	ar_context_release(&ohci->ar_response_ctx);
+	ar_context_release(&ohci->ar_request_ctx);
+
 	dev_notice(dev, "removed fw-ohci device\n");
 }
 
@@ -3643,17 +3650,17 @@ static int pci_probe(struct pci_dev *dev,
 	err = ar_context_init(&ohci->ar_response_ctx, ohci, PAGE_SIZE/4,
 			      OHCI1394_AsRspRcvContextControlSet);
 	if (err < 0)
-		goto fail_arreq_ctx;
+		return err;
 
 	err = context_init(&ohci->at_request_ctx, ohci,
 			   OHCI1394_AsReqTrContextControlSet, handle_at_packet);
 	if (err < 0)
-		goto fail_arrsp_ctx;
+		return err;
 
 	err = context_init(&ohci->at_response_ctx, ohci,
 			   OHCI1394_AsRspTrContextControlSet, handle_at_packet);
 	if (err < 0)
-		goto fail_arrsp_ctx;
+		return err;
 
 	reg_write(ohci, OHCI1394_IsoRecvIntMaskSet, ~0);
 	ohci->ir_context_channels = ~0ULL;
@@ -3663,10 +3670,8 @@ static int pci_probe(struct pci_dev *dev,
 	ohci->n_ir = hweight32(ohci->ir_context_mask);
 	size = sizeof(struct iso_context) * ohci->n_ir;
 	ohci->ir_context_list = devm_kzalloc(&dev->dev, size, GFP_KERNEL);
-	if (!ohci->ir_context_list) {
-		err = -ENOMEM;
-		goto fail_arrsp_ctx;
-	}
+	if (!ohci->ir_context_list)
+		return -ENOMEM;
 
 	reg_write(ohci, OHCI1394_IsoXmitIntMaskSet, ~0);
 	ohci->it_context_support = reg_read(ohci, OHCI1394_IsoXmitIntMaskSet);
@@ -3680,10 +3685,8 @@ static int pci_probe(struct pci_dev *dev,
 	ohci->n_it = hweight32(ohci->it_context_mask);
 	size = sizeof(struct iso_context) * ohci->n_it;
 	ohci->it_context_list = devm_kzalloc(&dev->dev, size, GFP_KERNEL);
-	if (!ohci->it_context_list) {
-		err = -ENOMEM;
-		goto fail_arrsp_ctx;
-	}
+	if (!ohci->it_context_list)
+		return -ENOMEM;
 
 	ohci->self_id     = ohci->misc_buffer     + PAGE_SIZE/2;
 	ohci->self_id_bus = ohci->misc_buffer_bus + PAGE_SIZE/2;
@@ -3720,10 +3723,6 @@ static int pci_probe(struct pci_dev *dev,
 
  fail_msi:
 	pci_disable_msi(dev);
- fail_arrsp_ctx:
-	ar_context_release(&ohci->ar_response_ctx);
- fail_arreq_ctx:
-	ar_context_release(&ohci->ar_request_ctx);
 
 	return err;
 }
@@ -3750,8 +3749,6 @@ static void pci_remove(struct pci_dev *dev)
 
 	software_reset(ohci);
 
-	ar_context_release(&ohci->ar_request_ctx);
-	ar_context_release(&ohci->ar_response_ctx);
 	pci_disable_msi(dev);
 
 	dev_notice(&dev->dev, "removing fw-ohci device\n");
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
