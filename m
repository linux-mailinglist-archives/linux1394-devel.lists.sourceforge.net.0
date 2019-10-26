Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 31056E593B
	for <lists+linux1394-devel@lfdr.de>; Sat, 26 Oct 2019 10:21:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1iOHJl-0008DN-EV; Sat, 26 Oct 2019 08:21:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cyrozap@gmail.com>) id 1iOHJk-0008D8-9q
 for linux1394-devel@lists.sourceforge.net; Sat, 26 Oct 2019 08:21:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p81TXaMgVSojfhskpGB7SahVkfH64PUiocjH9M24Wzk=; b=jMqVrETb3+3PWcqJWzi4k4BvAW
 +HM4Mu4Z1mZ3aMxxeqjJUvX/ExCHL3yx70MSL/eMtEYPcfQlj2ODIC6XdoMbNOsRiwNDqyhxtlRfz
 QEWxap/WLXHKYsm6/DWEAVJk/3qRmVP9dFputlwB7jKgq63rneRhB25gGgzpjWH8ITS8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=p81TXaMgVSojfhskpGB7SahVkfH64PUiocjH9M24Wzk=; b=a
 Odulqh6PoH7NexgoOhKzBxeuGw20EBqAyPgvksduQ1CTTUIKTHSv6T5iM0YcDjCuj1tD2d5MXIFFa
 4xQuCyTtOKkWgN9qaYClqEB/3Jz8D+ylltZzbKEvUcURwbrXCk6+fdrhgbxd1yP5oodLU5q/JepI9
 ZuySUjI9+DNdgo74=;
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iOHJi-0007jT-U1
 for linux1394-devel@lists.sourceforge.net; Sat, 26 Oct 2019 08:21:00 +0000
Received: by mail-qt1-f195.google.com with SMTP id z17so354733qts.9
 for <linux1394-devel@lists.sourceforge.net>;
 Sat, 26 Oct 2019 01:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p81TXaMgVSojfhskpGB7SahVkfH64PUiocjH9M24Wzk=;
 b=LFoQscePsnJ1jCe9Ajo2OOxq+SzEsUCg4qASOfD8J19hSOT3J0prJQh1RIH/Oe2/iO
 EVMnjC4EMOQsTy1YhpLfABZdSF1P/tBIMBPP9rKP2GjgCp6WIkeLC4QgumsmvRhT/6wh
 RyVPLfrYpynH1SIyCm5CCj2dTQqYTe454XTXEkYR4UQFZ+/N1TnQxzKL6AIheeNYWnBR
 DJPsuzIMVdg09rZM3CgjXmR0p/1S9hYb3wOdOCIJNmfJrM0Ubxj9pTafybeSnsreNXow
 lBHkD5ISdSDZ/b/nB+d4NWTokuqOQxxvtrwYTux4HTCQ4LWvsLwpKsMhZZsiLyjUriNV
 L/Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p81TXaMgVSojfhskpGB7SahVkfH64PUiocjH9M24Wzk=;
 b=P97xar5NWJyiZtHhjF9Wmk9qiaWMeUSZI1Im/nwXwmams38c/gXekm8Q2w/QI6TwrE
 gkpXyz9Bx+McnuF0If94IM8A5vXGcLRlpeccJUFm91CjhdNdQTXTIfrbdKIzazXCebAq
 zuslKxCeShrj1/cSZk2keCfn+TJmZa3jlAt6/mS+1kTNld2x+dQETBJqhyQUimP0Ikel
 A0YLMglQitjzeRsDIr08fJUdULL3hAhE/p1rxI09NZSkjDuA3KQI9APVWGl7oMKtld2q
 4jeK2FyyTuciCcqBzUT6GrQ+pBjMZprgRzpPkB46HXPjT0ZVp7aRrHH37UeURH+xjLDX
 fpLg==
X-Gm-Message-State: APjAAAVFNipRNmcWyBcldlaiULQfMsoudpV1ZfbXrw8+4C/4Tw9Wd/B4
 /RPbZlAy+iyxQ/bXkW+3GMF42TbTpKI=
X-Google-Smtp-Source: APXvYqxeLmly0aI/jpMgclDYoE+8gFMAVkGPR4FjfVQTE9/6Ofqo0R9PZHX4THF2BDHuTJpDSbz9rQ==
X-Received: by 2002:a0c:fec3:: with SMTP id z3mr7584558qvs.122.1572078052699; 
 Sat, 26 Oct 2019 01:20:52 -0700 (PDT)
Received: from localhost.localdomain ([194.59.251.149])
 by smtp.gmail.com with ESMTPSA id k13sm2307130qki.40.2019.10.26.01.20.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Oct 2019 01:20:52 -0700 (PDT)
From: Forest Crossman <cyrozap@gmail.com>
To: linux1394-devel@lists.sourceforge.net,
	stefanr@s5r6.in-berlin.de
Subject: [PATCH] firewire: ohci: Fix driver for systems with a page size >=64k
Date: Sat, 26 Oct 2019 03:20:29 -0500
Message-Id: <20191026082029.10358-2-cyrozap@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (cyrozap[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.195 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iOHJi-0007jT-U1
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

While testing a FireWire card on a POWER9 system, I discovered that
while the card was detected by the driver properly, devices plugged into
the card would get enumerated but fail to function. More specifically,
the devices would fail to respond to requests, and userspace programs
would report timeouts when trying to interact with those devices.

Upon investigation, I found that the firewire_ohci module was setting
some request and response sizes to the PAGE_SIZE of the kernel. This
would not be a problem normally, but because the field that holds the
request/response size is mandated by the OHCI spec to be only 16 bits
wide, the field was really getting set to (PAGE_SIZE & 0xffff), so on
kernels with a page size of 64k like my POWER9 system that meant that
the size of these requests/responses was getting set to zero--hence the
apparent lack of response from the devices.

To fix this, per the spec I capped the maximum size of requests and
responses to the maximum the OHCI spec supports, which is 0xfffc
(65532) bytes. The way I did this ends up wasting (PAGE_SIZE - 0xfffc)
bytes for each data buffer, so it won't be very memory-efficient on
systems with very large pages (e.g., 1 MB+), but since I don't have any
systems like that to test on, and since this driver wouldn't have worked
for those kinds of systems at all without these changes anyways, I
think this is fix is "good enough" for now. After all, working
inefficiently is better than not working at all, and we can always
improve the efficiency later if we need to.

Tested using a TI XIO2213B-based FireWire card with both an Apple iSight
and a Canopus ADVC-100.

Signed-off-by: Forest Crossman <cyrozap@gmail.com>
---
 drivers/firewire/ohci.c | 29 +++++++++++++++++++----------
 1 file changed, 19 insertions(+), 10 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 50d49dc09d69..1de17b33b10e 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -75,14 +75,23 @@ struct descriptor {
 #define COMMAND_PTR(regs)	((regs) + 12)
 #define CONTEXT_MATCH(regs)	((regs) + 16)
 
+/*
+ * OHCI Specification, Release 1.1: 3.3.1 FIFO Implementation (informative)
+ *
+ * reqCount can be at most 65,532 (0xfffc) bytes, since it's quadlet-aligned
+ * (4-byte aligned) and limited to 16 bits.
+ */
+#define REQ_COUNT_MAX 0xfffc
+#define REQ_COUNT_SIZE (PAGE_SIZE >= REQ_COUNT_MAX ? REQ_COUNT_MAX : PAGE_SIZE)
+
 #define AR_BUFFER_SIZE	(32*1024)
-#define AR_BUFFERS_MIN	DIV_ROUND_UP(AR_BUFFER_SIZE, PAGE_SIZE)
+#define AR_BUFFERS_MIN	DIV_ROUND_UP(AR_BUFFER_SIZE, REQ_COUNT_SIZE)
 /* we need at least two pages for proper list management */
 #define AR_BUFFERS	(AR_BUFFERS_MIN >= 2 ? AR_BUFFERS_MIN : 2)
 
-#define MAX_ASYNC_PAYLOAD	4096
+#define MAX_ASYNC_PAYLOAD	REQ_COUNT_SIZE
 #define MAX_AR_PACKET_SIZE	(16 + MAX_ASYNC_PAYLOAD + 4)
-#define AR_WRAPAROUND_PAGES	DIV_ROUND_UP(MAX_AR_PACKET_SIZE, PAGE_SIZE)
+#define AR_WRAPAROUND_PAGES	DIV_ROUND_UP(MAX_AR_PACKET_SIZE, REQ_COUNT_SIZE)
 
 struct ar_context {
 	struct fw_ohci *ohci;
@@ -660,7 +669,7 @@ static void ar_context_link_page(struct ar_context *ctx, unsigned int index)
 
 	d = &ctx->descriptors[index];
 	d->branch_address  &= cpu_to_le32(~0xf);
-	d->res_count       =  cpu_to_le16(PAGE_SIZE);
+	d->res_count       =  cpu_to_le16(REQ_COUNT_SIZE);
 	d->transfer_status =  0;
 
 	wmb(); /* finish init of new descriptors before branch_address update */
@@ -734,7 +743,7 @@ static unsigned int ar_search_last_active_buffer(struct ar_context *ctx,
 		 * If the next descriptor is still empty, we must stop at this
 		 * descriptor.
 		 */
-		if (next_res_count == cpu_to_le16(PAGE_SIZE)) {
+		if (next_res_count == cpu_to_le16(REQ_COUNT_SIZE)) {
 			/*
 			 * The exception is when the DMA data for one packet is
 			 * split over three buffers; in this case, the middle
@@ -742,11 +751,11 @@ static unsigned int ar_search_last_active_buffer(struct ar_context *ctx,
 			 * controller and look still empty, and we have to peek
 			 * at the third one.
 			 */
-			if (MAX_AR_PACKET_SIZE > PAGE_SIZE && i != last) {
+			if (MAX_AR_PACKET_SIZE > REQ_COUNT_SIZE && i != last) {
 				next_i = ar_next_buffer_index(next_i);
 				rmb();
 				next_res_count = READ_ONCE(ctx->descriptors[next_i].res_count);
-				if (next_res_count != cpu_to_le16(PAGE_SIZE))
+				if (next_res_count != cpu_to_le16(REQ_COUNT_SIZE))
 					goto next_buffer_is_active;
 			}
 
@@ -760,8 +769,8 @@ static unsigned int ar_search_last_active_buffer(struct ar_context *ctx,
 
 	rmb(); /* read res_count before the DMA data */
 
-	*buffer_offset = PAGE_SIZE - le16_to_cpu(res_count);
-	if (*buffer_offset > PAGE_SIZE) {
+	*buffer_offset = REQ_COUNT_SIZE - le16_to_cpu(res_count);
+	if (*buffer_offset > REQ_COUNT_SIZE) {
 		*buffer_offset = 0;
 		ar_context_abort(ctx, "corrupted descriptor");
 	}
@@ -1006,7 +1015,7 @@ static int ar_context_init(struct ar_context *ctx, struct fw_ohci *ohci,
 
 	for (i = 0; i < AR_BUFFERS; i++) {
 		d = &ctx->descriptors[i];
-		d->req_count      = cpu_to_le16(PAGE_SIZE);
+		d->req_count      = cpu_to_le16(REQ_COUNT_SIZE);
 		d->control        = cpu_to_le16(DESCRIPTOR_INPUT_MORE |
 						DESCRIPTOR_STATUS |
 						DESCRIPTOR_BRANCH_ALWAYS);
-- 
2.20.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
