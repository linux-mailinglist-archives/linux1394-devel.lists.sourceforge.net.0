Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D05B64B060C
	for <lists+linux1394-devel@lfdr.de>; Thu, 10 Feb 2022 07:08:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nI2cu-000599-M0; Thu, 10 Feb 2022 06:08:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <cgel.zte@gmail.com>) id 1nI2cs-000592-NM
 for linux1394-devel@lists.sourceforge.net; Thu, 10 Feb 2022 06:08:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b350Wl0VMceiJC3Swb0UabBZ5Vh81zaMpkDROb2RE6s=; b=NvRuJeJxZaKF2AJQ+e7hnw8Wdk
 DdxBGSH0GA8MkHTX2h4lIw22W1z3oUSJV5J2+s37HSVspZERuYMRfxdKnJSZit52d1JOT1RilMbIx
 EZDIBwm0pb4wnSsXoLXAt+pQ0P4YfPq8fMz6HYDb1KcbWvH3UhxtrLIaF0nWzhigMsFI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=b350Wl0VMceiJC3Swb0UabBZ5Vh81zaMpkDROb2RE6s=; b=W
 LDN9hH4Ei9UcGQWFLSXSSr+ePPhjhfzBj9MttzGOEMl50tD3ZNvY+KFFzO7X7oz1bRkYvhFSZbBoT
 GZ9YQuBoQi4okUEQO2Orsc5Wb5SCEUFHq7pEBYgrlnRFArDooaz/AaUs6AW6VaK0mllRAtDyUzlw+
 lKjYZFRWQIRXyDDI=;
Received: from mail-qk1-f178.google.com ([209.85.222.178])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nI2cq-00Cfjs-RP
 for linux1394-devel@lists.sourceforge.net; Thu, 10 Feb 2022 06:08:17 +0000
Received: by mail-qk1-f178.google.com with SMTP id w8so3837417qkw.8
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 09 Feb 2022 22:08:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b350Wl0VMceiJC3Swb0UabBZ5Vh81zaMpkDROb2RE6s=;
 b=qitJCd3TMvStsCo0PhbT6b6rUT6TLl0NwK6BsY3/uDGoySzqmhXvJaXpYrlqMe4Rop
 NkG4jd9l7EwdMfCxmqRq5h3KwDz7BvqxIvU71/eDdGdP3dIgneWolQMmlbJuNEPQVmtJ
 effMR0ily+rcN5OT/WNF7wmuLYnZZoAdJscpIkeOBsLFYytRBxSSXmtv1o7wFHeFDVd8
 lsb45fiYqzhrYctAo6aEpG1VmPX4e29598smHfMfXjtuJ0CwpMWOdQeCkWCw6yY1dn+4
 bLyNL73v5UjFiy/Phv/qfw+ZKVKyc99mgG27ZYbqvtrKcGfGoB5fFk4YjV7NSUcy9qFA
 sy5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b350Wl0VMceiJC3Swb0UabBZ5Vh81zaMpkDROb2RE6s=;
 b=dSbNlOCmQiZVc1sw/epCMjWO7hPojNQHfb32c8afASUL6284GvyLlI48e7U2fkAG+i
 sfLji/YmfZxOJjiUA4Il2Q+HN0/EJZ5/zhBM1Ad4wue02c5dCOGD+Oi0k0bd8RhKLS10
 hs16sMzQVd7P0GuNMUkRz77Wpy9EhA+RIdFjoffkRJonGnXJnszta5QhT8fO6ZagY118
 Uj9WTj2Z1SrIIH+KXQxn749Q5+kSyY+Ro+dGIR4hWaxtgJI86Y/NTzaAwBG1vwjgsRwE
 pxRSfC8HFZnpyvLKoHFx17KmXE5HxNVcM+C/+qx+9hw37PoiDxt/R/McNH1wnj6nGrZ0
 tTEg==
X-Gm-Message-State: AOAM532HWvLje3erXh8WV1Q3AiUICHxQBXPc8ay5ttrVl+JekcZ0ilDw
 8HbEObRasA/87Jd3FQ6Jj4A=
X-Google-Smtp-Source: ABdhPJwBWc13kiK0vC+W7G4h7jxvn2PXms2HPDb1+edK2QXRj032AlWU4FKZAPTbk6P4Cipy8L07DA==
X-Received: by 2002:a05:620a:1678:: with SMTP id
 d24mr3037940qko.477.1644473291074; 
 Wed, 09 Feb 2022 22:08:11 -0800 (PST)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id g21sm10467362qtb.70.2022.02.09.22.08.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 22:08:10 -0800 (PST)
From: cgel.zte@gmail.com
X-Google-Original-From: chi.minghao@zte.com.cn
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH V2] drivers/firewire: use struct_size over open coded
 arithmetic
Date: Thu, 10 Feb 2022 06:08:05 +0000
Message-Id: <20220210060805.1608198-1-chi.minghao@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: "Minghao Chi (CGEL ZTE)" Replace zero-length array with
 flexible-array member and make use of the struct_size() helper in kmalloc().
 For example: struct fw_request { ... u32 data[]; } 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.178 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cgel.zte[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.178 listed in wl.mailspike.net]
X-Headers-End: 1nI2cq-00Cfjs-RP
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 "Minghao Chi \(CGEL ZTE\)" <chi.minghao@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

From: "Minghao Chi (CGEL ZTE)" <chi.minghao@zte.com.cn>

Replace zero-length array with flexible-array member and make use
of the struct_size() helper in kmalloc(). For example:

struct fw_request {
    ...
    u32 data[];
}

Make use of the struct_size() helper instead of an open-coded version
in order to avoid any potential type mistakes.

Signed-off-by: Minghao Chi (CGEL ZTE) <chi.minghao@zte.com.cn>
---
 drivers/firewire/core-transaction.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index ac487c96bb71..563fdf8b2657 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -777,7 +777,7 @@ static struct fw_request *allocate_request(struct fw_card *card,
 		return NULL;
 	}
 
-	request = kmalloc(sizeof(*request) + length, GFP_ATOMIC);
+	request = kmalloc(struct_size(request, data, length), GFP_ATOMIC);
 	if (request == NULL)
 		return NULL;
 
-- 
2.25.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
