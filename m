Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F06DB876D9
	for <lists+linux1394-devel@lfdr.de>; Fri, 19 Sep 2025 01:55:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a7/A2oJb0rWDQE4cDnSMXZvVOM1+wl6QLRGIsTNzGeE=; b=WlU71OJWKbUZ11dDYzKXsyuwiE
	AC8EGR4Mo/2aQEIsHDi+J0dom1Brg9a+FOJbtkfePaCCfHwzdF8O/dDLE10X9lkKIyABMDR8n0NaS
	eOlli2pE5fu2s9lFcTj19GxufASG0KhgLG7hJD66T5+fvJeb4LfIYras28vEkx9gHVc4=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uzOSr-0008LI-BQ;
	Thu, 18 Sep 2025 23:55:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uzOSp-0008LA-S3
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 23:54:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ejd4z6Y74LQMHrIhXYwar2zF5r9qzO6yTwePlxELzOg=; b=KC4be6KivncxEbvZmoqzZyxGLP
 YtcFkhL/wfkriFbRZooIAJ4DK/lZwSoVQFYikVb6O+vBd9V7WALEj9e2Qgt0X5LKAq++7H1LfW7YX
 fNAUBdM2p0Cug4Q0PrnP4+MHSpnoJhqTzS3uWC7immnRuKnNJOm6xW/n5oY/pWDNEv9w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ejd4z6Y74LQMHrIhXYwar2zF5r9qzO6yTwePlxELzOg=; b=JPLUHRdpbGlee+Hztbrnmfd6vy
 i0G+ZBNiCRK8cVoMAfrkohXBkaip03QUhL+PFdnuoitJTKq7NgdG68Fqo8d9Dgy+uwrOaKPWLBUem
 iVXZnRMaCSP8yCehdHUR6TxbDpAqBb1bT97/S0iG/ELj0ql3Xy3LNsy2t/NcgxNZ5IJ8=;
Received: from fout-b1-smtp.messagingengine.com ([202.12.124.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uzOSp-0003Ra-1S for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 23:54:59 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfout.stl.internal (Postfix) with ESMTP id 8B8EA1D0028E;
 Thu, 18 Sep 2025 19:54:53 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-06.internal (MEProxy); Thu, 18 Sep 2025 19:54:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1758239693; x=
 1758326093; bh=ejd4z6Y74LQMHrIhXYwar2zF5r9qzO6yTwePlxELzOg=; b=c
 38uZGiBuk9pBkBw+iaAnut3EnYTKzdvVVb3R/OcQOckbqcphKU/xGyk9a8pnKkkI
 S/OgPJpfN2Lrf2AO0jH80hati/Fv9ZnX79uWirpeHM/UO1OA/jdKpxv4jtXEgTDO
 tdNyO9qXjSh42XTBrE5kLK+lPf3mSf8VoJZC08AgjdS9YjSgQ5KdFLwT5kNknFhg
 GWlVQhxLbvCBuAt4iLYoaiDTSWSXFfzqXBB9s2szSEcw7IOWLV5U8QgzRKI5KT2t
 kBxcTc7gFK0Kq3yq1ZO8RouXj4ghpuFViG13MG9ITqDIV2k9BTToRYmQL/fKqP8q
 RwLCYnV4VEEUtOr0r54jQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1758239693; x=1758326093; bh=e
 jd4z6Y74LQMHrIhXYwar2zF5r9qzO6yTwePlxELzOg=; b=B37X+xSf/fCZHX8Yu
 ZKNFow/EfEiZgXng1bJaRC8zg8enbQkoJtjbdg3GOpZ2IPshgiQ967QhqWvf+zXA
 TkAPoqqVb7jDBLLn1MsZcdzaTuljNefjsrj3CrKHLPB1Pgd7JJBwNy+OgLql79UL
 Hd1diPewM4sOTOJN7yi/U8DINeoAsv0ORQUd0CRNYZa5RG3OrXSf3gTgwM6BY7k3
 MwM3Bfw4Nwm5hEHXucLtoHGv4nrSuQMoNsgUAZKltdvydEYkELmn0ldzyNT0qa3I
 3YENndllSCHZ9EXYmQ/emHdMuGtfT9GBwhYBrNC91bg6/D8vtksa/z2uJjg6Rzdv
 OMo6g==
X-ME-Sender: <xms:zZvMaJchoTj2n98wXG6-oRoYNdoL4Jo8TeWwZ4_JE1jy-FXLBEdIHg>
 <xme:zZvMaAJ1w7OIsjVFECZeBl5yxVLKJoP2RaGiqxJiKlY3dbVB1dpu1o4oaD6RsVa2T
 KnR1Uqua1lcEefKQrk>
X-ME-Received: <xmr:zZvMaEeJyFzw2qe14aeiWwAQkCCNrRjwTEo_Up8Gfd10ex1P-LzABeBDi5VxxUX-fhikEE-NyPzG553s7RcMx1v2L8RfWL6dDPJhaKGzEwOjgyk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegjeejtdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgf
 duudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:zZvMaP3vwKc1XDjKJNp1z3u1bECAYlpFrJwxuNCKp1ONEcO-X8eSsw>
 <xmx:zZvMaFh00RlyU6ZAO42_4h4HMj_XnP1LwCY3BPYh8W7MUEr6U1xbwQ>
 <xmx:zZvMaNShU_KA4hEFUyaX8b39_Rgw6g6LZF_7OCtaPLHy1a-Du2f__g>
 <xmx:zZvMaOjiOkHoOWcY7qYSojcYKdBlo4zwB0hMFr34l1b-dIVENpfRag>
 <xmx:zZvMaMAwJe93aoU7oJQoiL7LnUt4UBkNujVaKKUatf4soVX-i7ig9Byv>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Sep 2025 19:54:52 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 1/6] firewire: core: remove useless generation check
Date: Fri, 19 Sep 2025 08:54:43 +0900
Message-ID: <20250918235448.129705-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250918230857.127400-1-o-takashi@sakamocchi.jp>
References: <20250918230857.127400-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Two functions, fw_core_handle_bus_reset() and bm_work(), are
 serialized by a commit 3d91fd440cc7 ("firewire: core: disable bus management
 work temporarily during updating topology"). Therefore the gen [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1uzOSp-0003Ra-1S
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

Two functions, fw_core_handle_bus_reset() and bm_work(), are serialized
by a commit 3d91fd440cc7 ("firewire: core: disable bus management work
temporarily during updating topology"). Therefore the generation member
of fw_card is immutable in bm_work().

This commit removes useless generation check in bm_work().

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 4fcd5ce4b2ce..ef00125fb01a 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -362,14 +362,12 @@ static void bm_work(struct work_struct *work)
 		if (rcode == RCODE_COMPLETE) {
 			int bm_id = be32_to_cpu(data[0]);
 
-			if (generation == card->generation) {
-				// Used by cdev layer for "struct fw_cdev_event_bus_reset".
-				scoped_guard(spinlock, &card->lock) {
-					if (bm_id != BUS_MANAGER_ID_NOT_REGISTERED)
-						card->bm_node_id = 0xffc0 & bm_id;
-					else
-						card->bm_node_id = local_id;
-				}
+			// Used by cdev layer for "struct fw_cdev_event_bus_reset".
+			scoped_guard(spinlock, &card->lock) {
+				if (bm_id != BUS_MANAGER_ID_NOT_REGISTERED)
+					card->bm_node_id = 0xffc0 & bm_id;
+				else
+					card->bm_node_id = local_id;
 			}
 
 			if (bm_id != BUS_MANAGER_ID_NOT_REGISTERED) {
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
