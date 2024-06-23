Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF31591390C
	for <lists+linux1394-devel@lfdr.de>; Sun, 23 Jun 2024 10:39:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sLIkj-0001Pn-5J;
	Sun, 23 Jun 2024 08:39:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sLIkh-0001PW-SB
 for linux1394-devel@lists.sourceforge.net;
 Sun, 23 Jun 2024 08:39:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=11XHwVSKA4haBzqqLDZYSMi2ESbRYlY9OIyv6jSHsgw=; b=CcmtNX09AGvT0DfQ0EZYqXVECi
 HVYsFzfREiAOMOBqEGREnwIlvuNhTBSyx+TyW/X9mFoBfIloetcULt0aYs7vM+5wkj+weHGVSJ+Xg
 PWTRyqmLEXf0hwR6FbTDy7rVpcIZUEed7Cc9ng2V64fGIAJdeWOK+5FrwbTAx0rIGKNM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=11XHwVSKA4haBzqqLDZYSMi2ESbRYlY9OIyv6jSHsgw=; b=T
 y9DW6UafdepdZCyI1WHSCXv5RhWvpROgWLh39zz6y89UeR3xx7pQwjKEKpeKNsfGo4oBJrrffLL7i
 XJpXsWeHrF73dvA/z+zJWNyn/IIoQD5aA+OH3eMIWtWZo8b2hb1oWUNUtYvDV/9wBVHkqg7vzo8wo
 KqRgYfNyOneKeH08=;
Received: from fhigh5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sLIkh-0006Ru-MN for linux1394-devel@lists.sourceforge.net;
 Sun, 23 Jun 2024 08:39:12 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 48D67114012D;
 Sun, 23 Jun 2024 04:39:05 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sun, 23 Jun 2024 04:39:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1719131945; x=1719218345; bh=11XHwVSKA4
 haBzqqLDZYSMi2ESbRYlY9OIyv6jSHsgw=; b=lMx5pl+TloIz6v0NsK4F+8wNm8
 nVsulufqK2SzAS9bk7Pc3tlL1mmmD2O3IUuz7z1UrvVw1Zn9bg8aOLqHZ2D4C+v8
 DE2wlFq2dGOKIzx6xxVeq0P2K4vu8f2m9er+TccJhe49ozvLteZc/qYKCa7x1+xS
 tDOCF9IAp3gCR1Hm7LZIiNY0a+/fMhuf9Qv/52QruHz6cN7fiBRGj+b0DLj/sq3o
 37pBaZfoh87DC6pYRqyezBQiC5mjroloTU+viETToOYJUUVB27G+IQo3wJ8pgcx9
 vD+nRzVjuIEEaH2Y/mzEZr3AmSlY97Z37gqvQqyZYdHB2+cEJ1YhtDjb2elw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1719131945; x=1719218345; bh=11XHwVSKA4haBzqqLDZYSMi2ESbR
 YlY9OIyv6jSHsgw=; b=V1WPWUpgMOUn8EMBLmtMqngXIiFakDYjoC4AukQnocUk
 Lm1vnM4sq862BbeCZji1HhxPUjfojPbpuDmCiYHeoCrtTTeVONBrr+GsriiOk/ll
 YNLb7gmuw2lZdg+k2NxHCM4iyYsyzHn/QyFddn8sX/30bF/bLbU3MEJ4/8L+DiYc
 CrBG8E4YoN9Enxp8ODE0rTyeTFM75p5cB4zEmIvLRjZFMk28ag7FfmeaQrR+zrfw
 tKjcXbM7nG6XFnKPVKqtk9ePTFbFw9jsP/vP0BUit1TidYlXmWYyEULnteFUTK/l
 vn0hWy9NmZEOCfrxmgJ0krEkSduy8GrNi7QJ5go4Gg==
X-ME-Sender: <xms:Kd93ZtMK_vjTzJ2lxJwTY3lt4IS2yYS7j0saHDTC0MgQ0265D3R5hw>
 <xme:Kd93Zv9JXn7dmxT8w3HaIWxzT0feq5DKib-rVxQDmd6UJUdDsLhqTqG4R4d-dRKnp
 0oM8dl-o3iAbbvshH0>
X-ME-Received: <xmr:Kd93ZsTzFNXTBzvF-u6bzu05y2zmm3q54FqacsFfSLkb4RmkLvwarHerEUJscKr2a3vdVXL9wrvwTivCV7l3nxfsu3G8CcCijpKoD_LhdfEf>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfeefledgtdekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffve
 ekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:Kd93ZptOgYKt1X9CeGWqwHPaeT5tEU1mTyP9XxEpoeO_iRwVSOfNhQ>
 <xmx:Kd93Zld-1dp-CSqhGjKJdLfezkTyTWzh8Ab2kYmdrR8SYYK8RAEOxQ>
 <xmx:Kd93Zl2Rg2cg56uauA4DAAMspqFvs6r91C85dPsLSIny-e88VJ7v8Q>
 <xmx:Kd93Zh8E-GFqxQb8IXUZgKfxDFyGdY71Y0v5FpxtvMiF_6QGPtCtDQ>
 <xmx:Kd93ZmpfW9dwhtayRW92VXI5b_kECOPyLtXWXuboW1pQ-RHjiy2_BE1V>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 23 Jun 2024 04:39:04 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: undefine macros after use in tracepoints
 events
Date: Sun, 23 Jun 2024 17:39:00 +0900
Message-ID: <20240623083900.777897-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Some macros are defined in tracepoints events. They should
 be back to undefined state after use. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- include/trace/events/firewire.h | 8 ++++++++ 1 file changed,
 8 insertions(+)
 Content analysis details:   (-0.2 points, 6.0 required)
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
 [103.168.172.156 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.156 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1sLIkh-0006Ru-MN
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

Some macros are defined in tracepoints events. They should be back to
undefined state after use.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 include/trace/events/firewire.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index 5ccc0d91b220..132f9329224d 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -366,6 +366,14 @@ TRACE_EVENT(bus_reset_handle,
 	)
 );
 
+#undef PHY_PACKET_SELF_ID_GET_PHY_ID
+#undef PHY_PACKET_SELF_ID_GET_LINK_ACTIVE
+#undef PHY_PACKET_SELF_ID_GET_GAP_COUNT
+#undef PHY_PACKET_SELF_ID_GET_SCODE
+#undef PHY_PACKET_SELF_ID_GET_CONTENDER
+#undef PHY_PACKET_SELF_ID_GET_POWER_CLASS
+#undef PHY_PACKET_SELF_ID_GET_INITIATED_RESET
+
 #undef QUADLET_SIZE
 
 #endif // _FIREWIRE_TRACE_EVENT_H
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
