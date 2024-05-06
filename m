Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3F68BC97A
	for <lists+linux1394-devel@lfdr.de>; Mon,  6 May 2024 10:22:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s3tc4-0002Cs-Ge;
	Mon, 06 May 2024 08:22:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s3tc2-0002Ce-K3
 for linux1394-devel@lists.sourceforge.net;
 Mon, 06 May 2024 08:22:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ac8QBrxyIqupzoU+z/gO0cIeQW48EPxhU6j4BYZsQ94=; b=INn4ftadM2Q/wiYNaG9DaoqX6Q
 V00Kl2a2Y7DPENIi7BXElvXFOh57W4Mv79V0amUccovCUAhdAdLZz6XB7klj9Rb2IWQhxPLuNdQLU
 KWsuu7fQtNCrjQi9/OJ23YoUCq5rGtwVEMZli50sQlBk/zATm+J/N3u2YVihbGayCnMI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ac8QBrxyIqupzoU+z/gO0cIeQW48EPxhU6j4BYZsQ94=; b=iNsgBn3mQDMsUhp6IhxUBp2qOy
 OYWU85K6pLGq5QmLJqh6EIK0fOC92WzQmZVWIGyokgbKrb8Q+g0S2Nn1xa5F45fyOvJ/UOIFdAI6A
 7N/XNcDNFelNocobA2usvDp/3jU7hpDtLxd1JTvfN58+bw13WBrH9IPfrdbBTvhvzTTU=;
Received: from wfout2-smtp.messagingengine.com ([64.147.123.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s3tbw-0000Xq-Pi for linux1394-devel@lists.sourceforge.net;
 Mon, 06 May 2024 08:22:13 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfout.west.internal (Postfix) with ESMTP id 446281C000CE;
 Mon,  6 May 2024 04:22:02 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Mon, 06 May 2024 04:22:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714983721; x=
 1715070121; bh=Ac8QBrxyIqupzoU+z/gO0cIeQW48EPxhU6j4BYZsQ94=; b=i
 xd3Ssnj6oD4Ufp0d3yjJpcz3zSidPCA0ZhZ16HYXIJt8Wftbg/9jCptA64aDkPwJ
 DVkYTRpLyTtKbCd9Wf25MaSJ+peUyA8leuPH5INICDQdd0gegv++/jGbHT/OOEhG
 b0I9WZTRVK8PLhZmbenI1e9zua/TeOJ2TSPfsmeTV6iBLAT5kn6/8UOGVr9Wj6y5
 KuFY2KG+VUuNuBIRGkNs0FeJqZ74bVNFSNpj0zmLTONNkY8jxjAJ3mhZwbGxHA3P
 k2g6lHvDaN7s0wiLNFZQE/9o/ujVuQy/rKnE7cDg1ZLgI7QAz+pB7RMDp6NIyvxm
 kxkHxp2tDNSwggYxSko6g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1714983721; x=
 1715070121; bh=Ac8QBrxyIqupzoU+z/gO0cIeQW48EPxhU6j4BYZsQ94=; b=V
 Anb2qS3d27d/+39CU67rs5e6Do/e2nd37wTgOpAfwqJY10c6KwVhtPyVR3cU9tIi
 o/rSU35xLvL6gez77ZzSzn8HDWgrD/qXNlp8WRwlcHYp0JlaeuLhKyvqUiuWdfIz
 Smespr2ffKKLxgAaeUBfTtMBMEMFp77nBQorQk6mHxLCqqsWloY+nlNV9uLmiNxt
 H8WqYrqFEcQTpI2xABaonHJpnc9yw4lfGNNbOzcewfV80+NUZc6WCIyeFDZvHWX/
 oZ2CWpUfsGnV6F2W5Bz6eGR/0CeX4MoIc94eTNhwUskC6I6o/OuVnCT0deFzbYa7
 FJr8GzI6z6oSVjE9p/mzQ==
X-ME-Sender: <xms:KZM4Zs3GFnxmm_mHUbDCd87S5WPXj4O6HA7_z3W_9vYJ1qCiuQVhIA>
 <xme:KZM4ZnHvQJ90QKRxHVC8MkpGARekbBlxQVMeJRHeGAs7bRFDHTzl55i4LwOtxLwMb
 W0oNmXrAztixD9pziA>
X-ME-Received: <xmr:KZM4Zk7RUddSHyOCvV1rHTPo7zlEIDRBlfX0-OC9NyqH68QlmAR4vpBhjZbWBnbcl_OL9LetOyBlpb-YHOxDq1xulQ9qPXVp-AM5p7jmqiAm>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddviedgtddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:KZM4Zl2erQw5f-oqNkvuK2Q_nBTBF2OWWsk-crf8sQpkzpxA4qShrQ>
 <xmx:KZM4ZvG_M0KPYc_fM8cF1xLxjNN0ETgyED8pi-kS2_x-zwaISzW_Ng>
 <xmx:KZM4Zu_bjR-vN1OjhgPzHkQ_5SQ9ZrvGzN6TAfm8C8s5jZBiuYEewQ>
 <xmx:KZM4Zknw8FeHsh0NjKV85bjDcLiGU7Zxoz1FLweqCrK0dpKuzxncug>
 <xmx:KZM4ZkR6gtaKWCWUKjYqDfB2NSwJ1Q1DFIQxW6dw8SXLZxnUoK-PaGI7>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 6 May 2024 04:22:00 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: remove flag and width from u64 formats of
 tracepoints events
Date: Mon,  6 May 2024 17:21:54 +0900
Message-ID: <20240506082154.396077-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240506082154.396077-1-o-takashi@sakamocchi.jp>
References: <20240506082154.396077-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The pointer to fw_packet structure is passed to ring buffer
 of tracepoints framework as the value of u64 type. '0x%016llx' is used for
 the print format of value, while the flag and width are useless i [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1s3tbw-0000Xq-Pi
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

The pointer to fw_packet structure is passed to ring buffer of tracepoints
framework as the value of u64 type. '0x%016llx' is used for the print
format of value, while the flag and width are useless in the case.

This commit removes them.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 include/trace/events/firewire.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index 4163959be57a..cd6931b134ee 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -221,7 +221,7 @@ TRACE_EVENT(async_phy_outbound_initiate,
 		__entry->second_quadlet = second_quadlet
 	),
 	TP_printk(
-		"packet=0x%016llx generation=%u first_quadlet=0x%08x second_quadlet=0x%08x",
+		"packet=0x%llx generation=%u first_quadlet=0x%08x second_quadlet=0x%08x",
 		__entry->packet,
 		__entry->generation,
 		__entry->first_quadlet,
@@ -245,7 +245,7 @@ TRACE_EVENT(async_phy_outbound_complete,
 		__entry->timestamp = timestamp;
 	),
 	TP_printk(
-		"packet=0x%016llx generation=%u status=%u timestamp=0x%04x",
+		"packet=0x%llx generation=%u status=%u timestamp=0x%04x",
 		__entry->packet,
 		__entry->generation,
 		__entry->status,
@@ -273,7 +273,7 @@ TRACE_EVENT(async_phy_inbound,
 		__entry->second_quadlet = second_quadlet
 	),
 	TP_printk(
-		"packet=0x%016llx generation=%u status=%u timestamp=0x%04x first_quadlet=0x%08x second_quadlet=0x%08x",
+		"packet=0x%llx generation=%u status=%u timestamp=0x%04x first_quadlet=0x%08x second_quadlet=0x%08x",
 		__entry->packet,
 		__entry->generation,
 		__entry->status,
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
