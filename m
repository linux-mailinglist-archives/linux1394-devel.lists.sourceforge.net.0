Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C675FD0CBC7
	for <lists+linux1394-devel@lfdr.de>; Sat, 10 Jan 2026 02:39:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Uus+enfCWQ/zCXNEkB7uVoyU/oQ7IerLVQlzfp+yc+4=; b=lOnph9KSVNOHSIfJK1JmemAl3h
	qw7o9L84n6qC6bM4ddZKBu/bjuUeGhjiT5+51tdzC1H2GgRq3XOC6AIjcyg6OmTlcIndfXP4XKLYp
	OQrAhv2cTCHat0rYDG1G4OPrmlUPsBra+PZ2kDgm1Ek6JMzWQgA3ujdApaB53mVnDfZ8=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1veNx0-0002mv-Qr;
	Sat, 10 Jan 2026 01:39:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1veNx0-0002mi-2K
 for linux1394-devel@lists.sourceforge.net;
 Sat, 10 Jan 2026 01:39:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w2apLbBCDPMElkZ2Il83KFAe9ExfrWY3DP8BCFMPYuQ=; b=B3owcxvvWnCvNnFQphBBO8tiik
 FHCXOxVfCk2MR/ruE0/5oI0flJrhGvKzw2eLIvzfxlM1CiBHyzQ7ZSoMPEpUCXdMXn4Bt1LDPEezR
 FjQ6wltsdTJYuocBlYm5CxtVdePkSwd2WQnMLEQdmkaErlpLOkFO1fFdRBu8+AeWUD8Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=w2apLbBCDPMElkZ2Il83KFAe9ExfrWY3DP8BCFMPYuQ=; b=PsDJI+8zCHkV/E6CYb0dOwHUWs
 lGZ7D8C5V3leOLQpXnt1/VaD+ItE1kjrB/7eGy9JLJFB3W7B7X0YjbksjceT8sBbRGV7rL+i/9Hha
 7IjxK4Yfpc//m7TwmMid/K2mnk54PnwiCnQ/Xy5VX7Ll+Jb4KSd2PHqTBH52PYIo0pPI=;
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1veNwz-0000g0-Jj for linux1394-devel@lists.sourceforge.net;
 Sat, 10 Jan 2026 01:39:34 +0000
Received: from phl-compute-12.internal (phl-compute-12.internal [10.202.2.52])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 0D15914000B3;
 Fri,  9 Jan 2026 20:39:23 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-12.internal (MEProxy); Fri, 09 Jan 2026 20:39:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1768009163; x=
 1768095563; bh=w2apLbBCDPMElkZ2Il83KFAe9ExfrWY3DP8BCFMPYuQ=; b=E
 o77zuNNg9MHl3yNJcTM5UZ9PQ8JqYEJi6Uf3oAXeOsbNpbQlAaRmoL+nnH3nTLtM
 REITTGjktOJva+G16VsrgoelTaCimDLwBYo28LNyylu2gd7n1LuHEpDI5j6oNNN6
 MP6YWv5Q0/KK0VwuvAY2NbD10+MUq7aGyu1L3ITUq0e1Y/uDWk3mvZF1b0mhICSI
 Q485+uVi6jXo0DWQ7DBcVgV/af76samxrDvb4vOZJYuCkb4RMmnOKorEOOxcgNgD
 8qYdfOVARfNoFf4XTFDOD1GsYp8XJjm5uvXKvXScRGzpCBWfKLSHNxGI84V0DRMh
 d99fTJSYhSYivejV9U7IQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1768009163; x=1768095563; bh=w
 2apLbBCDPMElkZ2Il83KFAe9ExfrWY3DP8BCFMPYuQ=; b=qGFafP+vMyeDIBObU
 AVHOTgHwtp3yVSXgPVGMPZNiB0Qd21LZUaNUYNoJDvoyqh3zYw3t7I8Ic5yKgcES
 xRmkwHQ6Qwoucq26wnAGbpVS3XIt2B31x49b5eMGg0zGQ9dkg3ZUcqaYOqo8gVhO
 XT9brRpUm6bBorjcvmX0p7FxKsoARpy4QvrJ/EqTU5tbSUG3mFT8iST7EEMRsvR3
 uh4ZzWfZ55a8NHKpzHhmtdEvHjIOnohT2r+odKDKuMUDiyeHxviYIkkzsxKHROL7
 eOUva9HabKZG5I9w+7T2DOWUROEOrbRs9OZ+3A93jlWAuy/jq45LhQkZIsnP6mly
 JKEFw==
X-ME-Sender: <xms:yq1haSqUVplKgcph8Ia1WUmXPgcdx8XbznV_tBGtyRQWuqpDiEnBOg>
 <xme:yq1haYZVff5mkHtDDA2DGhm59oJAUp28pClT4Dfirch1iQm6f5frnxftDOcPhnX9H
 yqlxqX7glEvdQvKaKGRx5GUkmyzwy-L5RniHMEq2YIrDw72ns1Wyw>
X-ME-Received: <xmr:yq1haaRJHWyMnVyxEqmws_X3c_L6ubn-2yl8z5FAqiCaSIdtfqiAPSri3YJf4V7NstTtt0rVnk-RrEvpIjLzXY29ion_95dCkpjmIbRUa5Yi>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduuddtfeelucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepjhhgghesnhhvihguihgrrdgtohhm
X-ME-Proxy: <xmx:yq1haf4zY36I5hnrtgnWhxQYqXOuoh6vTm3e1rfEEjsabJhGRkglVg>
 <xmx:yq1hafxg7pAD6RXX4z6LjG7y-R8kZbFdGxZ4ZViLYPZM689KX_SuNw>
 <xmx:yq1haeRzIDTEhYK18h0DjfwMEg3OcUtA0pNUmC7ym51kqG3lVwKFYA>
 <xmx:yq1haeU9ClYNik9zKrEPWY39ZpPGpu_aWgE8CeDIVbkCxmS4Jty8fQ>
 <xmx:y61hadHiDQFiA-aiGWPj5hGQ-QhdX2aLWVX_DSQBuW6bhBdphXTuUB3w>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 9 Jan 2026 20:39:21 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 6/8] firewire: ohci: use MAX macro to guarantee minimum count
 of pages for AR contexts
Date: Sat, 10 Jan 2026 10:39:09 +0900
Message-ID: <20260110013911.19160-7-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260110013911.19160-1-o-takashi@sakamocchi.jp>
References: <20260110013911.19160-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The computation of page size for AR DMA context can be
 simplified
 by MAX macro. Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> ---
 drivers/firewire/ohci.c | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-)
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1veNwz-0000g0-Jj
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
Cc: linux-kernel@vger.kernel.org, jgg@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

The computation of page size for AR DMA context can be simplified by MAX
macro.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 68a336577d36..f6da4cd7d123 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -86,7 +86,7 @@ struct descriptor {
 #define AR_BUFFER_SIZE	(32*1024)
 #define AR_BUFFERS_MIN	DIV_ROUND_UP(AR_BUFFER_SIZE, PAGE_SIZE)
 /* we need at least two pages for proper list management */
-#define AR_BUFFERS	(AR_BUFFERS_MIN >= 2 ? AR_BUFFERS_MIN : 2)
+#define AR_BUFFERS	MAX(2, AR_BUFFERS_MIN)
 
 #define MAX_ASYNC_PAYLOAD	4096
 #define MAX_AR_PACKET_SIZE	(16 + MAX_ASYNC_PAYLOAD + 4)
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
