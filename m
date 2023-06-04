Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C7E7214F1
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Jun 2023 07:45:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q5gYI-0000FV-Pb;
	Sun, 04 Jun 2023 05:45:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q5gYH-0000FB-M0
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Jun 2023 05:45:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yKoKikTVQbdJ/GWKBdSJlh//T8Gm6Qtq4ujUJMHiy0s=; b=eWjy6GAQe2WrL7N0nk301dEGCg
 QlJ4TDzwE2g45HetnDyQuI4iXjgQpWe3B5gb7umHS9gqyFpMFUbsjuu6+h6n+ZQJGdk29TfB3odmK
 Dn9Qb320vygEMNCMF10kF9+nfp7AwONKN4yKxmceU+SJDGGfo8mk627i6xjLXvipd+TE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yKoKikTVQbdJ/GWKBdSJlh//T8Gm6Qtq4ujUJMHiy0s=; b=km2ejw+JPG3yc81fyyuddelO1A
 tsEBTQFGI0LgB+/GdpIEG+a8Nyjb/iNsA2qZ5xNtJsOGPDjejrpbmxYREb7NUMkCMfFhykzb/TGup
 peL4oIGh8ZUxq861TCzrtYmLuDKGDwdFNj4ooyHibxy7gqpTz40S5W3qtGiaZtBLj+6M=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q5gYH-00032x-Hx for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Jun 2023 05:45:18 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 71AF85C0107;
 Sun,  4 Jun 2023 01:45:04 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Sun, 04 Jun 2023 01:45:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685857504; x=
 1685943904; bh=yKoKikTVQbdJ/GWKBdSJlh//T8Gm6Qtq4ujUJMHiy0s=; b=b
 zUI2T4MtRqQFE0xkxyHAewvPaapTG9qww6k+9Ol6Sn+o/uxlk/w6ulvDqKRg5uBm
 B3otPR2jHuc8bomo6SReGWTP6WFHcSdMDI5E8QlT1QotoHuudMhGTcy3vICmsBwf
 v3Ymx9SGeFaOlwLQYCRoC+JE/12t6AP5VG5DIo9Zf5p/zGvEcRKSHfL7que0ejVu
 XG+xVM1ddS/pfMi8wOvIPfDYrpp3NFBWKG+F2jGEuFh4Y0FYIdVWBYrgUf7FwbSG
 kuUG4UXbClC9shjfq12S5JXUJK+dIw1+oAh7unif7+/nbtA4qOS81Ub/bNQQZNV7
 N48iqILJEYkyYgGzY6BdQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1685857504; x=1685943904; bh=y
 KoKikTVQbdJ/GWKBdSJlh//T8Gm6Qtq4ujUJMHiy0s=; b=KRGhQa+sc+UZutBiz
 ZqDiBiY0L9tMY+geOqh6qC2uvtTAON/b7rIKWWhbuhAFH7bbRVSGZUsQurhXpvC1
 7gFqu2VUH+0DgmFK5YZvEpZ5IfJomr/ewolgJ+wdHXDXuRBvbgqtvkxO28TapksD
 3rf9+5ca5ucHWJwLN5SUfoZfLHI4vzaS14FOuU6jowkTe7ty6pQIFFEF5BE+UcFE
 80qQ1WMm3213THgxP6jwgngFqP1O4a5VDEwi+yL5er29/xWj3BbdbrlRpkzS5C/F
 NsvWukJ3d0ZuWIQ1XhBpAmIOQ13kyzojp98wSswm9Kj55ic1s4ceQ1Ku80Ppfi0N
 FAJwA==
X-ME-Sender: <xms:4CR8ZDbEyIowo8gwi-HR9nx_yL7duF-dE1fszdnafEWTg8WtfmpKiA>
 <xme:4CR8ZCYrgnXRo80b0yJnvbhs71nhrGnRET7Cs0wbwsI93Nzsx1kbZ4ygcSJ_feSTV
 D636aaBd5EoScCM2XU>
X-ME-Received: <xmr:4CR8ZF_bmK08vJqWmFrdJImQ82pqvHwATjIBC8HWRv89vUSo-plBTLk1x6g-z-2c8gE_wwlxyhemDsjVQp0KfomNfppSzomj7xjFNORuPzM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeeliedguddttdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevfefffe
 ektefgveegfeelheffhfeujedtjeevtefhkeevkedtjeejvddtjefhjeenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:4CR8ZJotpCHEgK9rJZicoOiNpYk8AHFjvRzOVWz39ZP-R3-U5KoXTg>
 <xmx:4CR8ZOqKG6Zskrtf0BUwpbaRZLCDyUjVCG5uklcyS2KOd09Yr4XGBg>
 <xmx:4CR8ZPT9JvUI55DOkBop_4QZdoc7OBBb73NLP6ca0kkeG2juBdWpug>
 <xmx:4CR8ZFRl_C4J9jMicVWw6Fnj8skiEi7MPUvUBGhwHBuRIuw2l7y18Q>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Jun 2023 01:45:03 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 6/9] firewire: ohci: use devres for list of isochronous
 contexts
Date: Sun,  4 Jun 2023 14:44:48 +0900
Message-Id: <20230604054451.161076-7-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230604054451.161076-1-o-takashi@sakamocchi.jp>
References: <20230604054451.161076-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The 1394 OHCI driver allocates the list of isochronous
 contexts
 as much as the hardware supports. This commit utilizes managed device resource
 to maintain the lifetime of list. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/ohci.c | 19 +++++++++ 1 file changed, 9 insertions(+),
 10 deletions(-) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q5gYH-00032x-Hx
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

The 1394 OHCI driver allocates the list of isochronous contexts as much
as the hardware supports.

This commit utilizes managed device resource to maintain the lifetime of
list.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index cb6b43e3f67e..086505bd1729 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -3666,7 +3666,11 @@ static int pci_probe(struct pci_dev *dev,
 	ohci->ir_context_mask = ohci->ir_context_support;
 	ohci->n_ir = hweight32(ohci->ir_context_mask);
 	size = sizeof(struct iso_context) * ohci->n_ir;
-	ohci->ir_context_list = kzalloc(size, GFP_KERNEL);
+	ohci->ir_context_list = devm_kzalloc(&dev->dev, size, GFP_KERNEL);
+	if (!ohci->ir_context_list) {
+		err = -ENOMEM;
+		goto fail_atresp_ctx;
+	}
 
 	reg_write(ohci, OHCI1394_IsoXmitIntMaskSet, ~0);
 	ohci->it_context_support = reg_read(ohci, OHCI1394_IsoXmitIntMaskSet);
@@ -3679,11 +3683,10 @@ static int pci_probe(struct pci_dev *dev,
 	ohci->it_context_mask = ohci->it_context_support;
 	ohci->n_it = hweight32(ohci->it_context_mask);
 	size = sizeof(struct iso_context) * ohci->n_it;
-	ohci->it_context_list = kzalloc(size, GFP_KERNEL);
-
-	if (ohci->it_context_list == NULL || ohci->ir_context_list == NULL) {
+	ohci->it_context_list = devm_kzalloc(&dev->dev, size, GFP_KERNEL);
+	if (!ohci->it_context_list) {
 		err = -ENOMEM;
-		goto fail_contexts;
+		goto fail_atresp_ctx;
 	}
 
 	ohci->self_id     = ohci->misc_buffer     + PAGE_SIZE/2;
@@ -3721,9 +3724,7 @@ static int pci_probe(struct pci_dev *dev,
 
  fail_msi:
 	pci_disable_msi(dev);
- fail_contexts:
-	kfree(ohci->ir_context_list);
-	kfree(ohci->it_context_list);
+ fail_atresp_ctx:
 	context_release(&ohci->at_response_ctx);
  fail_atreq_ctx:
 	context_release(&ohci->at_request_ctx);
@@ -3767,8 +3768,6 @@ static void pci_remove(struct pci_dev *dev)
 	ar_context_release(&ohci->ar_response_ctx);
 	context_release(&ohci->at_request_ctx);
 	context_release(&ohci->at_response_ctx);
-	kfree(ohci->it_context_list);
-	kfree(ohci->ir_context_list);
 	pci_disable_msi(dev);
 
 	dev_notice(&dev->dev, "removing fw-ohci device\n");
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
