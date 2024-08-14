Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6FB951B91
	for <lists+linux1394-devel@lfdr.de>; Wed, 14 Aug 2024 15:12:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1seDnu-0000EP-4B;
	Wed, 14 Aug 2024 13:12:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1seDns-0000EH-RD
 for linux1394-devel@lists.sourceforge.net;
 Wed, 14 Aug 2024 13:12:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y/gk/oa4qjodJlJZB+T+ovRfgKRyorStmelbqCHzu6M=; b=MYXnSRAx3o3XQdyTyoo2A+MKo1
 lyLpCzxymaCVQM5QukAI+U1y/+DhWs59rXJVMbxFPKclbBHl1UeaPXMGXVqs58Thbg8IYg5YNhkSn
 qh36phvF9jMdQQSJCC/g3V+B8HaLwBy06CO7AVCsEOiVW3v+1ldpnLAkcaXsX6Fx9/Ds=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y/gk/oa4qjodJlJZB+T+ovRfgKRyorStmelbqCHzu6M=; b=TX+4mpheKioxzpE9vkXJiphf3u
 qr2WVgFlmjMUSXLNi2Vt0pyKmfD8VRagCZ84EnpENi+MZF2OpoRbYMVSnprQa2VxjYkkcQ3x1XtC7
 vt3xHOc6Q4734T0KjmnPTiEyUEqeWX5CiTL9QW/hq1b5/qvfIVuBKaYhr1CG+IXXHpV0=;
Received: from fhigh7-smtp.messagingengine.com ([103.168.172.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1seDns-00080Z-RR for linux1394-devel@lists.sourceforge.net;
 Wed, 14 Aug 2024 13:12:41 +0000
Received: from phl-compute-08.internal (phl-compute-08.nyi.internal
 [10.202.2.48])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 3B8D9114C2A4;
 Wed, 14 Aug 2024 09:12:30 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-08.internal (MEProxy); Wed, 14 Aug 2024 09:12:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1723641150; x=
 1723727550; bh=y/gk/oa4qjodJlJZB+T+ovRfgKRyorStmelbqCHzu6M=; b=B
 soG3U/nhcwwwT4ODwO3d3iEePjsyOXqUowdX2g0X0tY8SoaHrtQTeoWNlojf2L1f
 bIRHrzcEeFdna/AoemUMO1KFvTxl/KUqUtEnzGu34c1msDW5dEDnrbW5egF1vHYi
 +6vYxptp6yHOnZKjUp6orGtx/vliyLlwvt1cPJVRK59npb7ixyQnmhpW710pSLVI
 Q9t8ZhcxlSVUnLV4rICzwtv/tSZeR1OZR3S/dTQYrrLBT1aZ1unWAnxXGR3zuLkG
 EaQwcP/dhEThVR+NRIPF5gucUPnB2qXZQZwnCGl7VZHhgX+xacTFrmjOTzMHWZ0J
 2xg1S/cDVZ00ooKrrI/XQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1723641150; x=
 1723727550; bh=y/gk/oa4qjodJlJZB+T+ovRfgKRyorStmelbqCHzu6M=; b=T
 k3dT+zWd08QX9OqglVaNnWfkHLU1RZphmTZ/5SP1Ib5p6LmMMcGdtWytzGnIJhOw
 pzdF0G3b0dZSm/NDYuS6OMiAJTx6jAlhfRt+cyxkdpk0K5zefO82Bp1Z3DZRUJxb
 yNlW+4f8hs+L/7rCFT4tqhjrewodcCBjiTE4E3MzjDHEjh8mRci1F1uiyFCQN9v6
 Ej2+fgPoRCwi7Rggfhlp6frJYVULBxuqPWul6w4qF14cTDlgY08ey6zGB4VtX2IK
 i1SSt9Z8dWw9HMgfY/lBumztYryuk1Gh8PwHkQpa3bbfDTlPEHSpyvvNVyeb1tPM
 yHjOo2BNHE79BPxPOzN3g==
X-ME-Sender: <xms:Pq28ZuCLgQPBtbySo8oZwfWkoDMEvh7PmC4STPxyKtyqlGHhj5Lx6w>
 <xme:Pq28ZojqSVznxS6MSq16dDEfAUSCqLiQxIteW3HVxsO2o6a2MBdyNVE0B74LjZ8QI
 a7Vlc7QvAx6fTr5tbY>
X-ME-Received: <xmr:Pq28Zhlk79ABlA-msWcpOYYTAhry65h9bOIXpMsPbgp1IVdVac3M460EUGXByTLD2XfczeFTBq36WGWp2q12NJ8NCuJnH-_Wn4f1r2GrTKek>
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
X-ME-Proxy: <xmx:Pq28ZsyAy0OWmQvFqXM0vH8Ej63lV1OnxABhCL9q5aMg3J8eWqqjPQ>
 <xmx:Pq28ZjTjsJOmDRiNHVWQQFImdgXW1qbbbmosXlBTD7We177pjgtaPw>
 <xmx:Pq28ZnYRSNsoFeqHb2UaiEhoVuzEhVS5APju5jZzURFu6jslKk1qUQ>
 <xmx:Pq28ZsQExfyfda0kAUt0MXB95qaMk4GH7xe888mVMpJqLVfKu-VkYQ>
 <xmx:Pq28ZueiOcb9Hq6Jt67SXtV9Tb5FOEQdsHapDmYci9ux5jFn5YwD9iMu>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 14 Aug 2024 09:12:29 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/3] firewire: ohci: remove unused wrapper macro for dev_info()
Date: Wed, 14 Aug 2024 22:12:21 +0900
Message-ID: <20240814131222.69949-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240814131222.69949-1-o-takashi@sakamocchi.jp>
References: <20240814131222.69949-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The ohci_info() macro is a thin wrapper of dev_info(), while
 it is never used. Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
 --- drivers/firewire/ohci.c | 1 - 1 file changed, 1 deletion(-) 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.158 listed in sa-accredit.habeas.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.158 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1seDns-00080Z-RR
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

The ohci_info() macro is a thin wrapper of dev_info(), while it is never
used.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 198c96d75155..979f1e1f2d16 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -50,7 +50,6 @@ static u32 cond_le32_to_cpu(__le32 value, bool has_be_header_quirk);
 #define CREATE_TRACE_POINTS
 #include <trace/events/firewire_ohci.h>
 
-#define ohci_info(ohci, f, args...)	dev_info(ohci->card.device, f, ##args)
 #define ohci_notice(ohci, f, args...)	dev_notice(ohci->card.device, f, ##args)
 #define ohci_err(ohci, f, args...)	dev_err(ohci->card.device, f, ##args)
 
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
