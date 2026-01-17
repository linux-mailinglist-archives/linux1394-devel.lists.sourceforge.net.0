Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E036D38F12
	for <lists+linux1394-devel@lfdr.de>; Sat, 17 Jan 2026 15:28:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rY1FXsNKxsyr/UnTguxLWmPjNHzEB2UVim9RE/UJW9Y=; b=bZcsviGi12LU/qZAVdxoXJGXMs
	o09GyiiP8H3kP+7NRN7++gG88RT9uXNHQrduEUOg3vzUHO26D9ys4FLoTF/FXZXvat/RymD646fMJ
	0eDoWjLeytxEt9e+CR9p5sUpgBBh3szohDrNP5o7BXWgGwDEndwdMskFvt0RDfBfOSBg=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vh7IE-00030j-OJ;
	Sat, 17 Jan 2026 14:28:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vh7IB-00030S-4i
 for linux1394-devel@lists.sourceforge.net;
 Sat, 17 Jan 2026 14:28:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NVzj8Ql53jQtPGC8rxKPSYOxdrumrOkAudNJ+7K/T/0=; b=dahLheCaZjY6iTlWgOpt9TmftC
 DI9qdqg1/kBzz1D535bpZc4QGErgkYLIEw29kP2gNVlS02+rnFeM9CnDAMkiRDc999hBMdv++SYT7
 3tfnm7xtfesf1sppS2mX2vDe+zXfHP5mIca4ADWep1VHabA0PMXrW+Ic5RUa/sjkIc38=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NVzj8Ql53jQtPGC8rxKPSYOxdrumrOkAudNJ+7K/T/0=; b=Gw3yBO5DWuX2OGu6njhIqpmq98
 XctP/orZAlrrAGrJ6xBjVgKj5L6IdqbXtliomwU78aa3VciHf3akoJHburpTmycuUCMUTBdKlGrdO
 JJ0t9Om5ETIFrjqjDVYsWQEwOQir5kaA0ssfpN00nXdIJmRnWmxUEB+5Sn8poadaKsYo=;
Received: from fout-b6-smtp.messagingengine.com ([202.12.124.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vh7IA-0001WC-FN for linux1394-devel@lists.sourceforge.net;
 Sat, 17 Jan 2026 14:28:42 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfout.stl.internal (Postfix) with ESMTP id EBA221D002D0;
 Sat, 17 Jan 2026 09:28:36 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-06.internal (MEProxy); Sat, 17 Jan 2026 09:28:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1768660116; x=
 1768746516; bh=NVzj8Ql53jQtPGC8rxKPSYOxdrumrOkAudNJ+7K/T/0=; b=a
 bHEFIUYLcp2VMn6JSp7Z0UuVHRSTZBktaHwCk+OVK7DKlLQvwl+kCCcsA7F14Awa
 gMCNODz/9z1US9uXzrauppSGaPAn5PsDicmfibaP0krZPytffQzy5wtJkXK4dp2a
 ySGu9wyHbgEN64hUq9uyWJYO/Qd/HOSHODTIiMAVmHnwzQp4ESs0goB1JKASpp9O
 k2vjQls+HRkhnLNy2H6K4ohSjcODRleNc4UdKryOW+jxQOZZhqfwicAyZyMs04KN
 hxy+Bu56FmbtJSnqV6cig2jqsszDKIEnAchLJn+DHKSKL0AmTmyUEjQCREMKJMH+
 3c9FryHNDxDYXRSN/wMiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1768660116; x=1768746516; bh=N
 Vzj8Ql53jQtPGC8rxKPSYOxdrumrOkAudNJ+7K/T/0=; b=TocXxC8AfnK0WoD11
 QFr6ucbbAG1qZ2QzlAt2aXq6QSZieE58iN4cCQYIzpfe+NiGs3kY7+AUq5Mg7O6d
 h8NXdc0MQ2SQgY0UHcszMfF/MVpBVKxXwkm1jHw0xW4WKo5bZ9bBsQS4bFtiBuX7
 2/KGf48fx6UR52nG8k6NBeDZDGnKKxJ7Sx+CRVXEdL2OUwM0Ox+VgH/Vb47mYeMW
 JuMg2oPSLZVWz0U9hln/i119JruG6zgp/B+Uuz2GAx0m4BYigf9gjoI27xa0peRm
 0XpL9HlTow96b8mpsJ/npuSthy8DCf86Kjv8rJbygyV6e+1g98Dhz1ePTeEoL36k
 5YJYQ==
X-ME-Sender: <xms:lJxraV_vN3tOIje0REC4lSPn-kVMbhHRcm3gT55p-qSB7zwDqPkw1Q>
 <xme:lJxraZ3GBdCgCgfDFQaWFyjKRBfKXUzi1wtOlc-Qany1WWq3IZz4fLV2is0TLjqz4
 ijjDwO50emtn0tU61HuVd-rqKVoha-pziJC8o-FLB1XD3gBRi1JwA>
X-ME-Received: <xmr:lJxraa-odW92_WaqzDbWuD_IJ76wN3nmI8Bf-st3OyQR-OptzK2TLrw6y1vHMqhJd_huZ8r3koVhntfaMgDu1Tl_sBZuVH2mPCJBh5wkW5--uQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddufedvtdehucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqshhouhhnugesvhhgvg
 hrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:lJxraRvNKNFIpMBpUBE6NRr5CC0J7nDU0DVvKqDmJH-G_JV231W82A>
 <xmx:lJxraVCkc6NN87xlb2bqz5bDBmAEID47SRy8oT4iDJPpa8p54PSBfQ>
 <xmx:lJxraRXkvDAU_AMEYK0LyiP91B-NgsuDfMqjJU4fPWdtABnqKGsHaw>
 <xmx:lJxrabAw9Zv-QJRooY1gvnbxE9N1g0Sy_pw3qP6qFwn6i8tXQBnNdQ>
 <xmx:lJxraeSW3ZcGcv6C09pSAlOffDO8x87tfURxy7-5om6vuHhZjd-SHzPu>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 17 Jan 2026 09:28:35 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 6/9] firewire: ohci: allocate isoc context header by kvmalloc()
Date: Sat, 17 Jan 2026 23:28:19 +0900
Message-ID: <20260117142823.440811-7-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260117142823.440811-1-o-takashi@sakamocchi.jp>
References: <20260117142823.440811-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Isochronous packet handling now runs in a workqueue context, 
 where page faults is acceptable. This commit replaces __get_free_page() with
 kvmalloc() when allocating the isochronous context header buffer. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1vh7IA-0001WC-FN
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
Cc: linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Isochronous packet handling now runs in a workqueue context, where page
faults is acceptable.

This commit replaces __get_free_page() with kvmalloc() when allocating the
isochronous context header buffer.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 8bba70b65ad7..888c43940999 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -2958,7 +2958,7 @@ static struct fw_iso_context *ohci_allocate_iso_context(struct fw_card *card,
 				int type, int channel, size_t header_size)
 {
 	struct fw_ohci *ohci = fw_ohci(card);
-	void *header __free(free_page) = NULL;
+	void *header __free(kvfree) = NULL;
 	struct iso_context *ctx;
 	descriptor_callback_t callback;
 	u64 *channels;
@@ -3016,7 +3016,7 @@ static struct fw_iso_context *ohci_allocate_iso_context(struct fw_card *card,
 
 	if (type != FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL) {
 		ctx->sc.header_length = 0;
-		header = (void *) __get_free_page(GFP_KERNEL);
+		header = kvmalloc(PAGE_SIZE, GFP_KERNEL);
 		if (!header) {
 			ret = -ENOMEM;
 			goto out;
@@ -3137,7 +3137,7 @@ static void ohci_free_iso_context(struct fw_iso_context *base)
 	context_release(&ctx->context);
 
 	if (base->type != FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL) {
-		free_page((unsigned long)ctx->sc.header);
+		kvfree(ctx->sc.header);
 		ctx->sc.header = NULL;
 	}
 
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
