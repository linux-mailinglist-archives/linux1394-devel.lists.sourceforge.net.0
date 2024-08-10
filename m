Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B20C94DB31
	for <lists+linux1394-devel@lfdr.de>; Sat, 10 Aug 2024 09:04:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1scg9F-0002hi-Hw;
	Sat, 10 Aug 2024 07:04:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1scg9D-0002hX-BE
 for linux1394-devel@lists.sourceforge.net;
 Sat, 10 Aug 2024 07:04:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z/pEsMMK4BErUTH/zcnUU+AA7RKT4Gl9IJ+6tCMgr/w=; b=lIB4pWvY3dk8YyfFDRLK9kv7Ja
 iaqru3zbYu439/hGwRACutuwcwNQ4c6l+VlGojaKsK0Hxf7CeNu64Oo0aE/YPV1eFuTAuuaLs+6Yo
 IoGwLkd3Gk5lZVZNMZ8Ob2gkiWBZGToO0x/qKNtmUocqVQxFUtpQ9cnRtbcKdpwVOUnQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=z/pEsMMK4BErUTH/zcnUU+AA7RKT4Gl9IJ+6tCMgr/w=; b=R
 54p3RonMQyu8kq/3JTv+HgEbO/v2roS6TKIS3OSpyAdH+G5NuMQ0TopEyDH+es089O6NlGMY3dP+2
 NvEs7UkCtE/R/07iZb0evmx/oD9u76AtEgilvc2G+uqRCxBdwg8eaE7fPAWSKeqQxrJv9hQe0qMD1
 0bt0Kpv1BwP4CWz8=;
Received: from fout1-smtp.messagingengine.com ([103.168.172.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1scg9C-00048E-8g for linux1394-devel@lists.sourceforge.net;
 Sat, 10 Aug 2024 07:04:19 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.nyi.internal (Postfix) with ESMTP id A0A0D138FEF9;
 Sat, 10 Aug 2024 03:04:07 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sat, 10 Aug 2024 03:04:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1723273447; x=1723359847; bh=z/pEsMMK4B
 ErUTH/zcnUU+AA7RKT4Gl9IJ+6tCMgr/w=; b=Yts1S5CJHEUcDS2iDPSBJROoxl
 YV1NBmXGh900nCthCnVwCR6i1jV7mBV+Sewm4FwTGzYYWGOX6mgs8oe/7fb5Z7iR
 TsxVKlvMX7K7pLdP213+jFOg4kyfGePimdIP0abAJzRUmVzTW717WSSN0i3BAcgC
 kGlLn3Q/tcp/6V1Y3TPLS2CWp7P3rUwhfHE+xfBpjwq64GBKvp3wqdrkHTK5XYob
 rtk5LlpGEijtRV3Zlh5cttJRScGbg26QMSM11ebiZGEQ74WgSwhSehUCEc6nBhJ0
 uQP796+HCnicVAKrFeNQN35DCBmv7MyknvVmipnfm/0SovVe8w0ge8YitIcw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1723273447; x=1723359847; bh=z/pEsMMK4BErUTH/zcnUU+AA7RKT
 4Gl9IJ+6tCMgr/w=; b=nYnRW+2qpAMPYs1yhUNCzWRhBsfyjv5PCYwF5Pvai6Bm
 qiZnXdI1/K6RjgR+w3VzP7EWh0vMg8X26tGU0+lOYbwCKdfYo06mWGB6S86Eh4Ag
 /+pQe2VA3VtAk9r99p1QD7dMjWPLj+JP6TUXVOrZ2mpN0ql02N3Vu/5RuEH5pgXl
 u/1Ae2VDnecTTobE5qez4uJQXry8p56/D69sX3gVBo83AB/IKWcdevNVDliL9UNl
 OajKq851cwb9YAxNXtiMUtZU3BYZ0TiKBS1AQPAjaZVKYuaemU74XVamQJBT/qw6
 hPwM80/P0oTGEtZ765BQRS+MQguzoAgi9wxd0IqL9Q==
X-ME-Sender: <xms:5xC3ZoqwrJX8saOWRDz-aozH1t6y49dbgC2vthzAg4RC-6tfMlg51w>
 <xme:5xC3ZupCUZSJ7wXMKd5nDFnc7B3gBuxOQpvtHntRHdh9K-vTMI73DvDMngEnv2gGa
 EWBFcjPgJe5QU0cJzM>
X-ME-Received: <xmr:5xC3ZtMR0LsieSNTTLuuGhGgfp6b3juyb7wnp6iDQioxe58C-glvY7SlWRE-l3-py2mpZGdVcigq9ZX5ZNFi6UbXCRA6hbOG4qnjSs2Jt1Z8oQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrleehgdduudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffoggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohht
 ohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtth
 gvrhhnpeffvdeuleffveekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveek
 keenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqd
 htrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhm
 ohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlse
 hlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidq
 khgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:5xC3Zv6UApXnrLxg4gNtslvC4ANUqA8SvAf-NvvbyuC2Gsxoa405Kw>
 <xmx:5xC3Zn5oYZ5djSOSmGmRCFMNs_Zh2VKXbOQEtZZ79f1BkDVnj-uGww>
 <xmx:5xC3ZvhNaQwGgkonLV5eMCuzLnQgZCeHbfqFcDc7eh0n9RI7k7tldg>
 <xmx:5xC3Zh6UIEiXcMZEOT3D3VTOMVM467BcNQAuGBL9ZWn7jiktm0-3Og>
 <xmx:5xC3ZnHHdQNksacc_hYzhhnm6bT0kNWfqVQmCCWJKV04hhZRbOtUW89j>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 10 Aug 2024 03:04:06 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: correct range of block for case of switch
 statement
Date: Sat, 10 Aug 2024 16:04:03 +0900
Message-ID: <20240810070403.36801-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: A commit d8527cab6c31 ("firewire: cdev: implement new event
 to notify response subaction with time stamp") adds an additional case,
 FW_CDEV_EVENT_RESPONSE2, 
 into switch statement in complete_transacti [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.144 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1scg9C-00048E-8g
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

A commit d8527cab6c31 ("firewire: cdev: implement new event to notify
response subaction with time stamp") adds an additional case,
FW_CDEV_EVENT_RESPONSE2, into switch statement in complete_transaction().
However, the range of block is beyond to the case label and reaches
neibour default label.

This commit corrects the range of block. Fortunately, it has few impacts
in practice since the local variable in the scope under the label is not
used in codes under default label.

Fixes: d8527cab6c31 ("firewire: cdev: implement new event to notify response subaction with time stamp")
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 672a37fa8343..c211bb19c94e 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -589,11 +589,11 @@ static void complete_transaction(struct fw_card *card, int rcode, u32 request_ts
 		queue_event(client, &e->event, rsp, sizeof(*rsp) + rsp->length, NULL, 0);
 
 		break;
+	}
 	default:
 		WARN_ON(1);
 		break;
 	}
-	}
 
 	/* Drop the idr's reference */
 	client_put(client);
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
