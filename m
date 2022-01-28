Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D00249F4D8
	for <lists+linux1394-devel@lfdr.de>; Fri, 28 Jan 2022 09:04:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nDMEg-00056H-Qf; Fri, 28 Jan 2022 08:03:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <cgel.zte@gmail.com>) id 1nDMEf-00055e-IC
 for linux1394-devel@lists.sourceforge.net; Fri, 28 Jan 2022 08:03:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5Wg7XwhpkBlxQ7Zn7O+lCnTmNTHWAdRJsDjrjJqJaew=; b=ZIB23i0CwaWEVyCrO1IX8ElVE+
 9ORHb77L9nVzfxw5qjkhAUjlNI5JCMbIUJlG226QyHpXcZwW2ONYZjL5LfDikY5ALJsJk6BfMMB9Z
 Izw3tp2raat1jvcPTdpWO9d0I5qdIuNr1U+q1DEOhcSVxizGEXsuwpYD1/FnErRczFEU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5Wg7XwhpkBlxQ7Zn7O+lCnTmNTHWAdRJsDjrjJqJaew=; b=g
 1NcdDlgOUxUPecOJfCcL/vyLXlIs1rYMaUrEo3XwmschD9Bn+ZdKpEAi65/biurVGIjvBRC3fqXDI
 sxznVA8jG6wnsNpz3KwD9YpaOlK1+3Q1HQFpZsURLnqB2Eutx/Fpuxu6UlMqlzauXhCK2nkUYqrye
 nmqngfJnd1XVUlVI=;
Received: from mail-qt1-f172.google.com ([209.85.160.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nDMEY-0005MF-Hn
 for linux1394-devel@lists.sourceforge.net; Fri, 28 Jan 2022 08:03:55 +0000
Received: by mail-qt1-f172.google.com with SMTP id k14so4535316qtq.10
 for <linux1394-devel@lists.sourceforge.net>;
 Fri, 28 Jan 2022 00:03:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5Wg7XwhpkBlxQ7Zn7O+lCnTmNTHWAdRJsDjrjJqJaew=;
 b=fQ221tAsQg+pKiAcm8TATyw1dOzqu37v2bzND6Aq0J0TGNG4dOdJEUqjYje/IrotmG
 P/pe2btc2C4icZHt18vTpc0FoRNxwanIjkBffykfDyGCd1Cn/Skoy8wW+CxtBX2ih052
 mAZzqwxv1SW+pvkMOOjTxJkgJt6iBH+dYQZJmt7GtA5TbBg2g8vLJUlenZMVSuF/60P1
 xN+zgHleO7QkrAKi/Rgva3UkNdO9j1xpTcYtW2z8rpFK4PuL0DKeCgl31TSW+8gIuq3I
 QB8qBOBB4B/7nzngHgzmbnb37LPlWYjcVr3ZboQBuPLOeASNeb1Kf0vfdqI8OED9guwv
 dBDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5Wg7XwhpkBlxQ7Zn7O+lCnTmNTHWAdRJsDjrjJqJaew=;
 b=P2ojG1uVt4l7Pi5aVTsco8kiSNRgkdrxrXbQxYzVT/C8Xf9bF9nu732RvSmDGTokQH
 dajA51hvu0rUUhoJupUtp8mSPqGc+H9asVCWyFumoJPz0eowdwU6kZs7ROYVQ0vPJ70H
 Mirc6Cf9QcxJ/AZhVRSPhDJngY9khCaltQIFXlM9YztMO3YGYwpA76VKNq7ZkEUbUCF4
 tXb1+7iEkisZlg97Oi8rE7e6FKmGAGMXpNB22J9k8qUd+qHMi/3hH5odmcxTZpYMQsJh
 t96AHw0HCkAUk4pH5Hg3lVRadoQI/phMF11ak8jdQA1cQhsuRcl+oi9rcB1x6W0BIBC6
 Ryhg==
X-Gm-Message-State: AOAM533kZdl6XUmCfoWj6D7s2KjpKN3DZw4kV3N0X4+OO04VsQs/7Tb8
 DBgJeROzPrv1iydsqjj6CTw=
X-Google-Smtp-Source: ABdhPJz9pVE6aeCVWJ4muL82r2uwIymglsccSxGIFVQel4wWMSYxuJWH+4/rPhXwXx6QRJC1RzLJUA==
X-Received: by 2002:ac8:5c49:: with SMTP id j9mr5389792qtj.365.1643357023692; 
 Fri, 28 Jan 2022 00:03:43 -0800 (PST)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id 195sm2779409qkf.30.2022.01.28.00.03.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Jan 2022 00:03:43 -0800 (PST)
From: cgel.zte@gmail.com
X-Google-Original-From: chi.minghao@zte.com.cn
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH] drivers/firewire: use struct_size over open coded arithmetic
Date: Fri, 28 Jan 2022 08:03:36 +0000
Message-Id: <20220128080336.1211525-1-chi.minghao@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Minghao Chi (CGEL ZTE) Replace zero-length array with
 flexible-array member and make use of the struct_size() helper in kmalloc().
 For example: struct fw_request { ... u32 data[]; } 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.172 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cgel.zte[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nDMEY-0005MF-Hn
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
Cc: Zeal Robot <zealci@zte.com.cn>, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Minghao Chi <chi.minghao@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

From: Minghao Chi (CGEL ZTE) <chi.minghao@zte.com.cn>

Replace zero-length array with flexible-array member and make use
of the struct_size() helper in kmalloc(). For example:

struct fw_request {
	...
	u32 data[];
}

Make use of the struct_size() helper instead of an open-coded version
in order to avoid any potential type mistakes.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Minghao Chi (CGEL ZTE) <chi.minghao@zte.com.cn>
---
 drivers/firewire/core-transaction.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index ac487c96bb71..2e9dd988ed0e 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -777,7 +777,7 @@ static struct fw_request *allocate_request(struct fw_card *card,
 		return NULL;
 	}
 
-	request = kmalloc(sizeof(*request) + length, GFP_ATOMIC);
+	request = kmalloc(struct_size(*request, data, length), GFP_ATOMIC);
 	if (request == NULL)
 		return NULL;
 
-- 
2.25.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
