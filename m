Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D72BF8BC97B
	for <lists+linux1394-devel@lfdr.de>; Mon,  6 May 2024 10:22:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s3tbz-0007mA-Om;
	Mon, 06 May 2024 08:22:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s3tbr-0007lv-RF
 for linux1394-devel@lists.sourceforge.net;
 Mon, 06 May 2024 08:22:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K8f8zaE/5s/YLEFIoVR0uzOmwjq31kQM6GCmXVEQz4A=; b=H1n6344iFRnEC1Dv3HIUrkPJBu
 6asTGyEIkewW0Ks0E/WvdZ5xg0AudNg5H3GWJlysDvHq2iaXwkNEElKGeiScy+GBQy8iowNwyf7r/
 DW3lYPXViS+Q0Va5BGZxkrAAz5VKlY+PpavEKzrIzM2Pudr+h2JlfGk8YzfITCvsiLc0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=K8f8zaE/5s/YLEFIoVR0uzOmwjq31kQM6GCmXVEQz4A=; b=X
 5frYZT3K3fIdPzwSFmNAI8uamjPCrlfBUrHoAeaMkt/vd6WNnOyo7Iwg1WVoTMqDn4ngQIwZtQ+bG
 +FhDmF4K/pTJyB83Tz6eUTZfAYHDXp25vHZDPgQJVywHXtdvsEslv/81zpR/IDqknGVoUNDntMMKm
 +0mhiyx/RRnfqRr0=;
Received: from wfout2-smtp.messagingengine.com ([64.147.123.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s3tbq-0000We-ML for linux1394-devel@lists.sourceforge.net;
 Mon, 06 May 2024 08:22:07 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfout.west.internal (Postfix) with ESMTP id 3C4C51C000B6;
 Mon,  6 May 2024 04:22:00 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Mon, 06 May 2024 04:22:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1714983719; x=1715070119; bh=K8f8zaE/5s
 /YLEFIoVR0uzOmwjq31kQM6GCmXVEQz4A=; b=KpnN8kLoOc3rx88tw5EQXIDU0G
 3/kooznyeFM5tCAObGT0a5ibiP6E17u+z7hvAq4+mEFA+IQj01tXqa5J+TB9RT31
 7zidSwbnvZgDnDULCTqw7jxsQQsj3w40ohkC/XMYM6WoBZzWaZUkz3BND82TbQUU
 aekhKUyfvG5sgnME+Yk4ketOyADGFQKzpFBHagYw7ysy6d7x0sfU3Y5un+pvazkh
 QsptLQyUscIPiS7/i3HMQqBURuI5gv1AkPMYf1Y1dYRPUq6d05U0/78Z3+1eVG/q
 yodhhKFpk4vc7VqRs11kl9/DInmYqtEHkW6fkaKLkHjZaLtb//eNA3xTijgg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1714983719; x=1715070119; bh=K8f8zaE/5s/YLEFIoVR0uzOmwjq3
 1kQM6GCmXVEQz4A=; b=S7L5WXAgH1s5Kx9wJTheAmEJOBSS8UDNumUB4iaSmqMp
 AAvNyIJTqLiTpjh/lm2U14tnAwRWZYXcQWep8+IwyYCwGxaQEEzeFpYVdsFTnle4
 Y2L1yJWQnl7AJvI5Ax3p8cenHtjtmt4nUoOTiA1FjVF9eAAJlzus4SlCyhggEb7y
 bj+v2jQot40mj6EEAvF8+8kirGCmLppuCpIxyhBu5DLims+rzO1QmthAOOzEfUOi
 yI4MS048YqrRpG8U2LHe0RM9MJVLhqt5vvD59zMRwQ8Qn13QneE3yfPNs0fm5N4K
 icKKxnectea2pN/S0kjkrxgyAwcwvj/PScNiaKik+Q==
X-ME-Sender: <xms:J5M4ZoNZ7hy3qMnirsrUqPSSZNIFI5vH_h3OXvV8DAGa8XRdkAZmFA>
 <xme:J5M4Zu_qodwCJt6SWsYKzmOcJOCBggxpEyhmK1FU7lUy1FtemZq3ecJ-YhnX95rjj
 V5LqTsexazVLrbLul8>
X-ME-Received: <xmr:J5M4ZvQZuDeHDF_8GbR_1oFy5vB-G5R_o5LSfgYT8Ntw2tT6zAMSsuIUc4b9gWCuifSDIGIjLVJsZnW90KOinO_e2V0nmCZvcJjNQSCG986Y>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddviedgtdefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffve
 ekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:J5M4Zguxh-rZAs40zcDcg3dJerG86V_-sO_mRsxvJGP8JB7Hs0C_GQ>
 <xmx:J5M4ZgcIPsGMhDr42QtJFx7aDZkj_RGOd0xC8Ju1s1Od0VMgO9g5UQ>
 <xmx:J5M4Zk1R-vsewqrauScrStT7R8AN9oPqKiyOEeXFFfWmWnY3OJ3jfQ>
 <xmx:J5M4Zk9dOVoW3A8DtvTwQxtrLwsjHMJFCuk765SRcmcI3W8vcPgDwg>
 <xmx:J5M4Zhpvya7fBGmezxrw4ImgQE0USWV4NThvmX03FRMG6MGPCosVC27g>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 6 May 2024 04:21:58 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: fix type of timestamp for
 async_inbound_template tracepoints events
Date: Mon,  6 May 2024 17:21:53 +0900
Message-ID: <20240506082154.396077-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The type of time stamp should be u16,
 instead of u8. Signed-off-by:
 Takashi Sakamoto <o-takashi@sakamocchi.jp> --- include/trace/events/firewire.h
 | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1s3tbq-0000We-ML
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

The type of time stamp should be u16, instead of u8.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 include/trace/events/firewire.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index cd6931b134ee..d695a560673f 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -106,7 +106,7 @@ DECLARE_EVENT_CLASS(async_inbound_template,
 		__field(u8, generation)
 		__field(u8, scode)
 		__field(u8, status)
-		__field(u8, timestamp)
+		__field(u16, timestamp)
 		__array(u32, header, ASYNC_HEADER_QUADLET_COUNT)
 		__dynamic_array(u32, data, data_count)
 	),
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
