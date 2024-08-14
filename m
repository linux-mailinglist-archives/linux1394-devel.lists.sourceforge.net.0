Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A77E1951B93
	for <lists+linux1394-devel@lfdr.de>; Wed, 14 Aug 2024 15:12:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1seDnt-0005kR-Lr;
	Wed, 14 Aug 2024 13:12:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1seDns-0005kH-BN
 for linux1394-devel@lists.sourceforge.net;
 Wed, 14 Aug 2024 13:12:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h51XzvDsQ4hxBQvXZZLP1R6qybew4VWlvslb3JFlNp8=; b=M5YCqFzcnDMQoIWgVFvJHIAdnS
 vcP1UU9PsumcwZBfS0WjLPzj+3Xd8+1W51jZ9qN2xAbyH7fQEkhhZwD3vToS7loNDGy5LUI3RdZ4Q
 ICEAyt+y2BtFTztUFkjmfQ342c1yUSEXLRlHqHPvJx05e7wEx2JMBryJNjtm3UVtumKQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h51XzvDsQ4hxBQvXZZLP1R6qybew4VWlvslb3JFlNp8=; b=CAt/Dg/z/rHirjhweZsoDRIjUy
 IJFfo+ifPAt1+Es2/GZtWf0Myv3zkVAvZKrUA7/Tl/kR51jwmbcu0/Lrk6aKtcJYbh1ZOGdYjcuWO
 lCclC1y93qoJaZe1spJu0lx8dK6x88qI7pMuT0jpbQyL6E6JkI7NooKgnkaJNTDHvhfQ=;
Received: from fhigh7-smtp.messagingengine.com ([103.168.172.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1seDnr-00080T-GC for linux1394-devel@lists.sourceforge.net;
 Wed, 14 Aug 2024 13:12:40 +0000
Received: from phl-compute-07.internal (phl-compute-07.nyi.internal
 [10.202.2.47])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id DD6781148181;
 Wed, 14 Aug 2024 09:12:28 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-07.internal (MEProxy); Wed, 14 Aug 2024 09:12:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1723641148; x=
 1723727548; bh=h51XzvDsQ4hxBQvXZZLP1R6qybew4VWlvslb3JFlNp8=; b=X
 FB62eABSmegj7ptEy834ChE65aYkfTyQnPoQb+ROX/xrAK9PQuAGlxqcv20I6D4l
 BFMD6009ONuxzNus2G0M2v9yWHCnNXvPtbXKRlxVx6h2mS5VVUyzBGAmgr7bpjVV
 hy/59JABhfNfWXbOXGUVE2YdceJZcE0o2wM6zpOZ7FM0KaTiOKIpmkRLzK1jRPT7
 jZI5evv+wauXRNSygfaMp2G9Cq9UcP1/wNMYxFJ30jgrFiir7/7i/o5t3rHFblKZ
 mC327Ucesy9o0DbGX1lv8vmxe5Ci46un7hFxB9AXznlLhyKp8C8QY7MD66zkW6Fy
 Y1jE7hCCQjRKHBtAptrJg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1723641148; x=
 1723727548; bh=h51XzvDsQ4hxBQvXZZLP1R6qybew4VWlvslb3JFlNp8=; b=b
 wyhsEFlsSNiiOUQowixvOgLYhTvnUnl1jhRG6lKIpaWf4sVNafxm8ITMJuhYDqy1
 EEcjwWBFK2jWhJW2ynkmE9Fyyi555S664Zz+6H8jkFzfpmRbhIT79B7zcsErfW/+
 U98EyA43fGhsR2DBFwVtUi5uCFckzgPB4ETXdnKV+3rNZwpgZ31SxX/CmquaraO9
 HvjbrASy6nu+0MLaKtbDFQo6bLmbHK8eaHk0PsNldUexz6yl/MHKhGXepsw0/KjN
 BC7vaQpvBO6MllWvoqENXzD8BA0lJRR80p1+ZXSg3HqyW5rDk0eP+eboI7bPEQqG
 qLMwAwDXW/fHtBtu1EWfA==
X-ME-Sender: <xms:PK28ZqRnJO3XT21fV45PjZR5c_Y2L7nYOSZZjoiDYMSTQ-laPDwOgw>
 <xme:PK28ZvyUw7jjE9KI5EmUcF8DQz073_C7RB505dQLNv-vL88xXKpndHtiXrnwW_rul
 XJE4-lew08GqRXKS30>
X-ME-Received: <xmr:PK28Zn0v0ToqMHvPIaxFLVsXRJ6P6ZDYO56L6O-VeGKDxgZhSrVCUKpPFHfSWrYB_TuHD0FFZtzpOEfsb3gz7ZCJIjVpNH37diXmZW6IPEJE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddtgedgieefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpedvjefgjeeuvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdff
 kedvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedv
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:PK28ZmDy2m3AlWKk4dddPtrf_-oI2qvgEfpWpPqNcUTqMwn_10ldew>
 <xmx:PK28Zjg3v2hJbwiRfBAt_-phDxJwkzkxYsHTLAXHZZL8KXSl4xAThA>
 <xmx:PK28ZipvjV1MpSPw5Fh-SMogfj2iltwcLiDX5ppg4gCU0wH8oqH_9g>
 <xmx:PK28ZmiibUBWjucVCVg75yc_dIlQh3Y3ztToS3-n6BC1AxmeuzOJ5w>
 <xmx:PK28Zmvz1MNY81yC14OysFT3gSgBL1jLS9bB93zsIJzMt9cGRseXbTX4>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 14 Aug 2024 09:12:27 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/3] firewire: ohci: use helper macro for compiler aligned
 attribute
Date: Wed, 14 Aug 2024 22:12:20 +0900
Message-ID: <20240814131222.69949-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240814131222.69949-1-o-takashi@sakamocchi.jp>
References: <20240814131222.69949-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The __aligned() macro has been available since v4.19 kernel
 by a commit 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h
 mutually
 exclusive"). This commit replaces with the macro. Signed-off-by: Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/ohci.c | 2 +- 1 file
 changed, 1 insertion(+), 1 deletion(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.158 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1seDnr-00080T-GC
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

The __aligned() macro has been available since v4.19 kernel by a commit
815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually
exclusive").

This commit replaces with the macro.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index e1d24e0ec991..198c96d75155 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -77,7 +77,7 @@ struct descriptor {
 	__le32 branch_address;
 	__le16 res_count;
 	__le16 transfer_status;
-} __attribute__((aligned(16)));
+} __aligned(16);
 
 #define CONTROL_SET(regs)	(regs)
 #define CONTROL_CLEAR(regs)	((regs) + 4)
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
