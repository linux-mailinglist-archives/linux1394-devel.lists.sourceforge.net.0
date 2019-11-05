Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 71143EFEF8
	for <lists+linux1394-devel@lfdr.de>; Tue,  5 Nov 2019 14:50:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1iRzDY-0008Nl-4l; Tue, 05 Nov 2019 13:49:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <stefanr@s5r6.in-berlin.de>) id 1iRzDV-0008NC-Oz
 for linux1394-devel@lists.sourceforge.net; Tue, 05 Nov 2019 13:49:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VwvtHRHJL03/W61wsR9bVAYOFjqhNJBb863Co7kR76A=; b=F3ghC7HDKusXYkCDXLU7LBHdCb
 8vdU74OaBu7aeJPdA1Ysqmq4Anr6OrDJhgMhQkc8BUbgyaU4+/7pWUT/WRB27Wzem96r8bZSfpfZV
 VNw6mZfC+FrCbh922CVwzZt/Ocv6lDzJtH1swHKbmUu1Huvk/BoruQP34E1Ua3r/Icag=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:Cc
 :To:From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=VwvtHRHJL03/W61wsR9bVAYOFjqhNJBb863Co7kR76A=; b=T
 RrAI1co3cqzrhRIdVl9vIphCWQ1RIcgsM325sCrCbX811KP5ikM2eiugi5fQWxAs6V+YiAs6qsZ7C
 IM3EsLpgOPs3UJyvl8Nzk8WgZaxw/6Mf9Vl/gxUDpFkhRiRmieltWIe1fAi6LnUW6cw3a7WieH5Sw
 uADKD87Ms9xp7Bg8=;
Received: from einhorn-mail.in-berlin.de ([217.197.80.20])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iRzDT-000t59-Ge
 for linux1394-devel@lists.sourceforge.net; Tue, 05 Nov 2019 13:49:53 +0000
X-Envelope-From: stefanr@s5r6.in-berlin.de
Received: from authenticated.user (localhost [127.0.0.1]) by
 einhorn.in-berlin.de with ESMTPSA id xA5DneLi023521
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Tue, 5 Nov 2019 14:49:40 +0100
Date: Tue, 5 Nov 2019 14:49:39 +0100
From: Stefan Richter <stefanr@s5r6.in-berlin.de>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: code cleanup after vm_map_pages_zero
 introduction
Message-ID: <20191105144939.3b38ce48@kant>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: 1.3 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: in-berlin.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SUBJ_OBFU_PUNCT_FEW    Possible punctuation-obfuscated Subject: header
 1.7 SUBJ_OBFU_PUNCT_MANY   Punctuation-obfuscated Subject: header
 -1.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iRzDT-000t59-Ge
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

Commit 22660db89262 turned fw_iso_buffer_map_vma into a one-liner.
There is no need to keep this in the core-iso.c collection of buffer
management functions; put it inline into the sole user, the character
device file driver.

Signed-off-by: Stefan Richter <stefanr@s5r6.in-berlin.de>
---
 drivers/firewire/core-cdev.c |    3 ++-
 drivers/firewire/core-iso.c  |    7 -------
 drivers/firewire/core.h      |    2 --
 3 files changed, 2 insertions(+), 10 deletions(-)

--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1694,7 +1694,8 @@ static int fw_device_op_mmap(struct file
 	if (ret < 0)
 		goto fail;
 
-	ret = fw_iso_buffer_map_vma(&client->buffer, vma);
+	ret = vm_map_pages_zero(vma, client->buffer.pages,
+				client->buffer.page_count);
 	if (ret < 0)
 		goto fail;
 
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -91,13 +91,6 @@ int fw_iso_buffer_init(struct fw_iso_buf
 }
 EXPORT_SYMBOL(fw_iso_buffer_init);
 
-int fw_iso_buffer_map_vma(struct fw_iso_buffer *buffer,
-			  struct vm_area_struct *vma)
-{
-	return vm_map_pages_zero(vma, buffer->pages,
-					buffer->page_count);
-}
-
 void fw_iso_buffer_destroy(struct fw_iso_buffer *buffer,
 			   struct fw_card *card)
 {
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -158,8 +158,6 @@ void fw_node_event(struct fw_card *card,
 int fw_iso_buffer_alloc(struct fw_iso_buffer *buffer, int page_count);
 int fw_iso_buffer_map_dma(struct fw_iso_buffer *buffer, struct fw_card *card,
 			  enum dma_data_direction direction);
-int fw_iso_buffer_map_vma(struct fw_iso_buffer *buffer,
-			  struct vm_area_struct *vma);
 
 
 /* -topology */


-- 
Stefan Richter
-======---== =-== --=-=
http://arcgraph.de/sr/


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
