Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 727BE7214F3
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Jun 2023 07:45:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q5gYM-0007Ft-0W;
	Sun, 04 Jun 2023 05:45:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q5gYH-0007Fb-T8
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Jun 2023 05:45:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yKzOsoG8xy2knPDZZ291nFvnf2PQCsND9mtXsk0fr2Y=; b=Mp+370T9WB8rnBWJakQlj2QJjt
 RVrHW7c2naoXA7LWiugZw9npkaFCaxbQOREtFoeYHOm/Ys2xzOQ8Y+Slgfx4EKMff8KiXWkoc4lf9
 bTskQbHDu2njtrFwPU80g29IFKcOL1kmOOI7j+KQ33jMYSUy7YGCAIw+PrYk9uiGkiHc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yKzOsoG8xy2knPDZZ291nFvnf2PQCsND9mtXsk0fr2Y=; b=SoC8szXlOcGu8wfXHysfuH/Se+
 +5sKHbDjkH+XU8HdtBepqEnLbT5w1fFOdjiN6sWcEp6E8RLkwXmojFJGoobd7/lAV87POTyJCg4ge
 frYlFm5EIM/MKG6KhkQJnmQt0x6t8UqSczXAH8MBTn/m8IjTQlS0/0Kligh1+gx3Oilo=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q5gYH-00AcRP-Il for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Jun 2023 05:45:18 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id BEDDC5C0115;
 Sun,  4 Jun 2023 01:45:05 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Sun, 04 Jun 2023 01:45:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685857505; x=
 1685943905; bh=yKzOsoG8xy2knPDZZ291nFvnf2PQCsND9mtXsk0fr2Y=; b=f
 uFVAxM25bqj3Ds6KmaGZfcKXCBwT8mpA6dp+saiduhBzHF83rSROBQ8CyfecGOjX
 S96DDx9wJX6tNHZGzduHeHwr/TmWza+CSKoht6pa3WHwg7SfhCZtvk2C+ZmPqkj2
 gm/xs1bgWp8M3xFi6DKhKn1v2SrmijDhaEzSphuZAMXixu/FSN1ctNYZe6srm8dX
 bvuQYXhSNn4gnGx+LA6NfZEwu21nuxRaEafb6QPox2qQ6ja3g+K+ECRD0wrABVOW
 cdZ8/735DWgg40ypU5RyNWfQdrlQIV/pIo+JP/0xbN6qkz7QKkWi355LgzyuIdp+
 atCnUKuGJT1OEfv35tNaQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1685857505; x=1685943905; bh=y
 KzOsoG8xy2knPDZZ291nFvnf2PQCsND9mtXsk0fr2Y=; b=wFL0zxvE79MqrhgcR
 GIol5duV+8ZAfStb6QzsH2XqKvAPr2gRFXPiwzQh1fGowYN4OYNs15j8Q0+UGAWg
 5+9DEU6pGoGcwo8RL/3wHhSjJHiEGKItul9/u5EYBByBX2gLX5Wi3ev6NKb6Qiec
 GiTIxeGGf/0fIzdVknxElNsUC3nuib7O75MO9sS+WuNnPP1AoCmZO4eEXaUPsczk
 2/pwUuyGBqrnOyvX3ZnlzWSTM2xA6OjgsAnEscnY6WMbIUC5RzrxI3mZzl/I+F4q
 AFqMFSqar0zzi8mD5uaSMv5RTCIT5P1UKq3YWzpTRcmrxclXiYJ6xvQaJP+WI/dF
 +pFtA==
X-ME-Sender: <xms:4SR8ZD04_zOtddzSHXc4ivYOhCxHrK9theEm8TBqzAtamrF8wrrkZg>
 <xme:4SR8ZCHcY3aTcyFBIUdi-HkWJAmcdgmpU63Cmt5gnoyC3T2kEHvbkqmO-a0A7Ipmn
 BFr44G6FSVDkx83hDo>
X-ME-Received: <xmr:4SR8ZD64FqQvogYMSqzuYnEc4h86ZdN9Z4364gPX5e2l8Ysp2ltWDFGfHic9BqJl38i7KtuBawCE38pFwfOddFvUE4kKw9xNp_yhSgqaYYc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeeliedguddttdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevfefffe
 ektefgveegfeelheffhfeujedtjeevtefhkeevkedtjeejvddtjefhjeenucevlhhushht
 vghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:4SR8ZI2SPynFl0pX4qAoQWADgVO8IxI3Et4zU7j7EbrT_03nEXcV5g>
 <xmx:4SR8ZGHY-0nkpJR7S68bLnEnjVYsj_6tH34v8_Sydc1ADSdq-L2I5g>
 <xmx:4SR8ZJ_j9NyLPhsdX3q15LKx18K7vollYBE_aUkJd9ryrDa1PqVtjw>
 <xmx:4SR8ZBNfn47l-CIJLxKjIwoXn-imOXoXXzbumdGOzY7bimZjCQIXFQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Jun 2023 01:45:04 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 7/9] firewire: ohci: use devres for IT, IR, AT/receive,
 and AT/request contexts
Date: Sun,  4 Jun 2023 14:44:49 +0900
Message-Id: <20230604054451.161076-8-o-takashi@sakamocchi.jp>
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
 Content preview: The 1394 OHCI driver allocates DMA coherent buffer for
 descriptors
 of IT, IR, AT receive, and AT request contexts by the same way. This commit
 utilizes managed device resource to maintain the lifetime of buffers. 
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
X-Headers-End: 1q5gYH-00AcRP-Il
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

The 1394 OHCI driver allocates DMA coherent buffer for descriptors of IT,
IR, AT receive, and AT request contexts by the same way.

This commit utilizes managed device resource to maintain the lifetime of
buffers.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 23 ++++++++---------------
 1 file changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 086505bd1729..21eb13ea4dad 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -1105,8 +1105,7 @@ static int context_add_buffer(struct context *ctx)
 	if (ctx->total_allocation >= 16*1024*1024)
 		return -ENOMEM;
 
-	desc = dma_alloc_coherent(ctx->ohci->card.device, PAGE_SIZE,
-			&bus_addr, GFP_ATOMIC);
+	desc = dmam_alloc_coherent(ctx->ohci->card.device, PAGE_SIZE, &bus_addr, GFP_ATOMIC);
 	if (!desc)
 		return -ENOMEM;
 
@@ -1165,10 +1164,10 @@ static void context_release(struct context *ctx)
 	struct fw_card *card = &ctx->ohci->card;
 	struct descriptor_buffer *desc, *tmp;
 
-	list_for_each_entry_safe(desc, tmp, &ctx->buffer_list, list)
-		dma_free_coherent(card->device, PAGE_SIZE, desc,
-			desc->buffer_bus -
-			((void *)&desc->buffer - (void *)desc));
+	list_for_each_entry_safe(desc, tmp, &ctx->buffer_list, list) {
+		dmam_free_coherent(card->device, PAGE_SIZE, desc,
+				   desc->buffer_bus - ((void *)&desc->buffer - (void *)desc));
+	}
 }
 
 /* Must be called with ohci->lock held */
@@ -3657,7 +3656,7 @@ static int pci_probe(struct pci_dev *dev,
 	err = context_init(&ohci->at_response_ctx, ohci,
 			   OHCI1394_AsRspTrContextControlSet, handle_at_packet);
 	if (err < 0)
-		goto fail_atreq_ctx;
+		goto fail_arrsp_ctx;
 
 	reg_write(ohci, OHCI1394_IsoRecvIntMaskSet, ~0);
 	ohci->ir_context_channels = ~0ULL;
@@ -3669,7 +3668,7 @@ static int pci_probe(struct pci_dev *dev,
 	ohci->ir_context_list = devm_kzalloc(&dev->dev, size, GFP_KERNEL);
 	if (!ohci->ir_context_list) {
 		err = -ENOMEM;
-		goto fail_atresp_ctx;
+		goto fail_arrsp_ctx;
 	}
 
 	reg_write(ohci, OHCI1394_IsoXmitIntMaskSet, ~0);
@@ -3686,7 +3685,7 @@ static int pci_probe(struct pci_dev *dev,
 	ohci->it_context_list = devm_kzalloc(&dev->dev, size, GFP_KERNEL);
 	if (!ohci->it_context_list) {
 		err = -ENOMEM;
-		goto fail_atresp_ctx;
+		goto fail_arrsp_ctx;
 	}
 
 	ohci->self_id     = ohci->misc_buffer     + PAGE_SIZE/2;
@@ -3724,10 +3723,6 @@ static int pci_probe(struct pci_dev *dev,
 
  fail_msi:
 	pci_disable_msi(dev);
- fail_atresp_ctx:
-	context_release(&ohci->at_response_ctx);
- fail_atreq_ctx:
-	context_release(&ohci->at_request_ctx);
  fail_arrsp_ctx:
 	ar_context_release(&ohci->ar_response_ctx);
  fail_arreq_ctx:
@@ -3766,8 +3761,6 @@ static void pci_remove(struct pci_dev *dev)
 				  ohci->config_rom, ohci->config_rom_bus);
 	ar_context_release(&ohci->ar_request_ctx);
 	ar_context_release(&ohci->ar_response_ctx);
-	context_release(&ohci->at_request_ctx);
-	context_release(&ohci->at_response_ctx);
 	pci_disable_msi(dev);
 
 	dev_notice(&dev->dev, "removing fw-ohci device\n");
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
