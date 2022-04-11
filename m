Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD7B4FBA22
	for <lists+linux1394-devel@lfdr.de>; Mon, 11 Apr 2022 12:52:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1ndrec-00055Q-JQ; Mon, 11 Apr 2022 10:52:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <cgel.zte@gmail.com>) id 1ndrea-00055K-Re
 for linux1394-devel@lists.sourceforge.net; Mon, 11 Apr 2022 10:52:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U9MFldUlI8YuKEyEgOU8kDAs+pi0T7vKsyhKnKGTjrs=; b=ln6xsUWGwo8J8bxey0jC6u/3Zf
 pbWQvJSKBoovLfxqqoQcSdZZKPrjY05DsosepNfuOucfP36K79hv3nSMZGN/qHkKD+sQINj2I18b4
 FgabX0Phqyyqa8yV0CtH6zYaTuHsNrSjWmShAqRvXrh1w+6Ucpx8T8YOHQcns+RC9434=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=U9MFldUlI8YuKEyEgOU8kDAs+pi0T7vKsyhKnKGTjrs=; b=c
 mBRqXw319CPDKFeBYr0HCeA/7iPqCIXVrsPgjG2GmChUCxi6cQUEfbZ0kpO1+lK9wgc9y8XVXNHAh
 OlDG3cVESGNrw988JwQ3eNH+zli2Ah/qTwkU7CWrcsYcHV72LtW+hq4V03AFWJrfmhWO4781gubIg
 JCBCQ91d6+5t/Pkk=;
Received: from mail-qt1-f171.google.com ([209.85.160.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1ndreb-0001yv-3W
 for linux1394-devel@lists.sourceforge.net; Mon, 11 Apr 2022 10:52:17 +0000
Received: by mail-qt1-f171.google.com with SMTP id t7so15818207qta.10
 for <linux1394-devel@lists.sourceforge.net>;
 Mon, 11 Apr 2022 03:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U9MFldUlI8YuKEyEgOU8kDAs+pi0T7vKsyhKnKGTjrs=;
 b=Ff34ICPcuZ39MIm1wSdAnTHfHMg3nEABTIupQv3gGUrKqr2aDB1qvNQlAsc4rawUvZ
 lbxtEmuxHeu+X9fwghaQ1VIa+rHafS+7i5hvdUHAP9omifH456HyIAyVRs+H4OZ78dyO
 4VWdIdyAvMEcRK6CBtbE1dtqVaHNUg9ednhDrTRBDjqpBV4VxzaquLcP5KwhpcCz2l3M
 klMb2grPVD0Z5PLyBbX0PP9Gw1Xuhw+sOOAYCs9pDmq8gyLhB8ZAYvS2jZ20Fi+vg5ve
 uhCXNayj8WRiT0rrGWhWz796XuMSIeuwOlmYn0XUkChy87wdRwEdFQxvetImUslidHFx
 Zc7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U9MFldUlI8YuKEyEgOU8kDAs+pi0T7vKsyhKnKGTjrs=;
 b=k0as7J+DHE1NSUStKYcHGNtPnHSMwC8mf2BO7mhsI6pSipsvRO0NkI1KfhQlwhn11X
 FaRIssMXOBdUIvaGhgxY/wP12R9meBLb6wjfz662UrySJoq+RQP/RnI9qmgPuExgi4Kd
 sDtdRtNb4B7FRJprkDAqYMwM7gZgH3KM9sGMvrDcVxsAL78tFPImkGcPTw4pL4gmPsYb
 b2jd6PDjRvA8wOeCBhH5DDkH0QdJ8QUhEyMb8FLNQUlBPSUgLth/HEyx1kgBoYvJVmIQ
 /NlCzPQrZKBEjjQ7DSEEu70DWifNgIW8G9aD6ISwyGyexGt2Yc5wnonHjBQRseq+o8Mt
 O6Kw==
X-Gm-Message-State: AOAM533TakbNSze93f9gGXYiWAOC0TqIfVFwk16B6AZgchL8Md6FMS86
 4Z1u5jxTIj7/WQOIzrhBtyY=
X-Google-Smtp-Source: ABdhPJw1RmDDrMWyFJKQ7n3xXxsChAg6SrV6I8TtssAKsFyGaB2msx9dJxTFQKSEtcp//ITLpexEpw==
X-Received: by 2002:ac8:7498:0:b0:2ed:c85:c9e1 with SMTP id
 v24-20020ac87498000000b002ed0c85c9e1mr10360705qtq.258.1649674331346; 
 Mon, 11 Apr 2022 03:52:11 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id
 y18-20020ac85f52000000b002ed08a7dc8dsm8436561qta.13.2022.04.11.03.52.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 03:52:10 -0700 (PDT)
From: cgel.zte@gmail.com
X-Google-Original-From: lv.ruyi@zte.com.cn
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH] firewire: Fix using uninitialized value
Date: Mon, 11 Apr 2022 10:52:05 +0000
Message-Id: <20220411105205.2520784-1-lv.ruyi@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Lv Ruyi If data is null,
 request->data wouldn't be assigned
 value. It is random value, but we use it in handle_exclusive_region_request()
 and handle_fcp_region_request() later. Fix the bug by initializing it. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cgel.zte[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.171 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.171 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1ndreb-0001yv-3W
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
Cc: Lv Ruyi <lv.ruyi@zte.com.cn>, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Zeal Robot <zealci@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

From: Lv Ruyi <lv.ruyi@zte.com.cn>

If data is null, request->data wouldn't be assigned value. It is random
value, but we use it in handle_exclusive_region_request() and
handle_fcp_region_request() later. Fix the bug by initializing it.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Lv Ruyi <lv.ruyi@zte.com.cn>
---
 drivers/firewire/core-transaction.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index e12a0a4c33f7..16ecfa7da177 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -778,7 +778,7 @@ static struct fw_request *allocate_request(struct fw_card *card,
 		return NULL;
 	}
 
-	request = kmalloc(sizeof(*request) + length, GFP_ATOMIC);
+	request = kzalloc(sizeof(*request) + length, GFP_ATOMIC);
 	if (request == NULL)
 		return NULL;
 
-- 
2.25.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
