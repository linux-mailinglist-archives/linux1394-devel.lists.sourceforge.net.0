Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B48D38F14
	for <lists+linux1394-devel@lfdr.de>; Sat, 17 Jan 2026 15:28:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L2UOF071/NbrAKjrNKJIgffKJKs6SsaGr1qTgH3j1nY=; b=DGiBAE+/QdeJWyVTUWbfu0stTC
	vYxtIe5UbNnlqWaWq2OBtedzwGYEuLAvp3rFLKG5bJHdv13DgBfyjVA2ZGhnuzLNcV89XtOB6LS36
	tun7PkdegBLxSJy/tXxrsk8bcM6iw6HVbBIW2km6QosKTkIfOgo6jv4b+j3Gtk9g7Uxo=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vh7IL-00031j-0u;
	Sat, 17 Jan 2026 14:28:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vh7IJ-00031X-24
 for linux1394-devel@lists.sourceforge.net;
 Sat, 17 Jan 2026 14:28:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bmtKD0BMvRMurgFJtQDY2EADTGUqOWOcdT7XHkmQz0k=; b=Oqp/n78cy4KeAUmwKByqfTzGoo
 p60rkhq2AREMyfHB80fcwUlXg5rkv+hyijjXKrEmJhTNXyhep0j1g8vYe2N8I2eF8gGlt/p+25n5c
 m5tVrPWUvn8Sw+PZ7a58ToUSQtgBPXskI4MlY+SqBCbyUnJ5H/MVEhGvreT5GtlSJEWQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bmtKD0BMvRMurgFJtQDY2EADTGUqOWOcdT7XHkmQz0k=; b=U4jebJX3d/OnN4o94JVBWdY/bN
 yFnTbjv8Kj2e/dSSmbBS1/Gb0RBlYYAMSDgHi15c46uIX6FOhk26fMh9vgEs/CGEaB56/ZglXrms7
 nk9TIkWK13GgVPoDaGFPHJo5EtLe7F/ddUgiXHs3uNvPTp8mlWRaWiE3bQGAcZzuJpqM=;
Received: from fhigh-b6-smtp.messagingengine.com ([202.12.124.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vh7II-0001Wq-Kk for linux1394-devel@lists.sourceforge.net;
 Sat, 17 Jan 2026 14:28:50 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 1FB1E7A0340;
 Sat, 17 Jan 2026 09:28:40 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Sat, 17 Jan 2026 09:28:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1768660119; x=
 1768746519; bh=bmtKD0BMvRMurgFJtQDY2EADTGUqOWOcdT7XHkmQz0k=; b=i
 lY/IKmEmS03Z2SbgAKMtCmKtxea9Qn3jTpxkq0WZwZovOHuMtJTujwIkK3G7PWnw
 gsusw1kvoZQyCt9bErZQeYm7/fr1e/E+OgMzGJDD5NA0KpFph78emRVQKYnU5r/9
 WXvwuIgeJYUW5t1D67KwH3MfZbOJvGo7G7IczBTIGJeNZLRb3GbgHwwdrjxMShb6
 hXdLn5FZLyL8FwazpGu8WIMl6+aaB8MBbfy1+BjHa5l+4J9bYZZGXmSarTYxTjrG
 zwWz3P5FQt0u0h3xtUQdDEAi1FGAMI+lGzg/SHjPTmb398t096J8+fhaFWY/y/1Z
 hi8oUdrcTRXUDQEyPOxzg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1768660119; x=1768746519; bh=b
 mtKD0BMvRMurgFJtQDY2EADTGUqOWOcdT7XHkmQz0k=; b=QGhzMXmndiYNzdtQX
 3JNrKoHuSi8enxctRFiYA9lOtjmNyS8C5rOR3B6g9tAtLsQbJGWRsDa3ZELe19MF
 O2vBsZTGAWnsV/hoRzrdwUH1ozZb7m4tSY+mEng0vzqpcGeCOhdw2zXO0O3dNCyz
 QlaiRX0gx0kUEc8W4tlhhSF1dmVeYk6j0U5zMmmgk15qiazkILzcc3zetE6/lHiD
 kpW3iBXf1R002f3sOJ8Nmq9niyl8W0gJg8yiMHc7vYh8VOCX90Pfxk5bTFNMWD5X
 ptbK6kqSuEZThWQUAbfi7wC1fybD37l6vxIjFt4KoqRixlp92YbogOMY8JAZ/pNq
 ozNnA==
X-ME-Sender: <xms:l5xraQw8yRPNSIHdouC7o2vC8huXuWR2OH4hn_GAwG1EHoGOT8n9EA>
 <xme:l5xraUbaQgat3WF3xoOe6r9yajbxawEMQIvkWl6SmRRpjaYplYdJ_as-mzklB_U1I
 bx3I6EyDQcyRr9ZA0azXcRfx2fLBZRtiegTTrsO-Y5Pj_hHCrFTzQ>
X-ME-Received: <xmr:l5xraaTd7BS1uZbLUQ-1Muz1eICtzH104mGvKhtVzVz9G90QygN9UXU5Fik8vYqw-qjZnSP3w4NBKoWTnYU0cudjhjjivDkyph8sTW-ajXrSuQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddufedvtdehucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqshhouhhnugesvhhgvg
 hrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:l5xraWx3WqaOhpbf9Gvoo3S6tgjLWwJRlEJ4wPFcZmlfS9nsAxOCKg>
 <xmx:l5xrac3uSUnLB1gdxaPTptTupmK1DnUNBLXJAgemTptepOQQcYl_Gw>
 <xmx:l5xraU7pImXF2WmF080aQwmu0sjuZAXVC8RqUfbRTeYm-AwsZmauAA>
 <xmx:l5xrafWfotI1pA5OGTnvDmI30L1bvjjAnn7Vzk07QhpuBSIA-oqExw>
 <xmx:l5xraZWYjckacjvFI7w_cSFLse6Sfu_dA9WPIzF5DNuxxGVsr8BhQIun>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 17 Jan 2026 09:28:38 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 8/9] firewire: core: add fw_iso_context_create() variant with
 header storage size
Date: Sat, 17 Jan 2026 23:28:21 +0900
Message-ID: <20260117142823.440811-9-o-takashi@sakamocchi.jp>
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
 Content preview:  This commit adds a new variant of fw_iso_context_create()
 that allows specifying the size of the isochronous context header storage
 at allocation time. Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
 --- include/linux/firewire.h | 10 ++++++++++ 1 file changed, 10 insertions(+)
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
X-Headers-End: 1vh7II-0001Wq-Kk
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

This commit adds a new variant of fw_iso_context_create() that allows
specifying the size of the isochronous context header storage at
allocation time.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 include/linux/firewire.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index 8bf568471588..986d712e4d94 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -584,6 +584,16 @@ static inline struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
 				       callback_data);
 }
 
+static inline struct fw_iso_context *fw_iso_context_create_with_header_storage_size(
+		struct fw_card *card, int type, int channel, int speed, size_t header_size,
+		size_t header_storage_size, fw_iso_callback_t callback, void *callback_data)
+{
+	union fw_iso_callback cb = { .sc = callback };
+
+	return __fw_iso_context_create(card, type, channel, speed, header_size, header_storage_size,
+				       cb, callback_data);
+}
+
 /**
  * fw_iso_context_schedule_flush_completions() - schedule work item to process isochronous context.
  * @ctx: the isochronous context
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
