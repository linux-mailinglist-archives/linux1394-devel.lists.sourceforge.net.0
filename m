Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1F9202C05
	for <lists+linux1394-devel@lfdr.de>; Sun, 21 Jun 2020 20:46:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jn4z1-0005db-Ef; Sun, 21 Jun 2020 18:46:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hslester96@gmail.com>) id 1jeFf6-0000qW-Iq
 for linux1394-devel@lists.sourceforge.net; Thu, 28 May 2020 10:21:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sw0rt0kzpIX/gUx8+hCgXRUMgtmjnf69jO+OqqsmVeg=; b=crPxFyvOXO0Y0mbEzD9o2+GGa2
 ILx3kahQtD8vKZEd39FQ7PTcVVaZylaU4cmtTdXuUzgXNF9CiH4wom5zP1xOSF3Ss+pBlbXyEm/P/
 6U/2Y9pi0KC+8S6sxH6O2YXKRY1vC1QAfS3EckbZSspQc3/uGqj9I1VKj1ftFjZ4YBH0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=sw0rt0kzpIX/gUx8+hCgXRUMgtmjnf69jO+OqqsmVeg=; b=W
 wenybrgTjDRtosIAEBnzJinM932fg/JxMinWi/IOPfLeA2ZwQqqwGqQgGNQ9jp7wf4QFBN599jyoo
 bRT6/51RHpldhXNvSwZB5YyMHRSQnCuc8M+m8q7oXVoE9okVZVcbK2q9HG1YKzhAVM+NoH51Wklvm
 UGxerqQ52iYcpXA4=;
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jeFf4-00AeLr-GY
 for linux1394-devel@lists.sourceforge.net; Thu, 28 May 2020 10:21:20 +0000
Received: by mail-pf1-f194.google.com with SMTP id 23so13329443pfy.8
 for <linux1394-devel@lists.sourceforge.net>;
 Thu, 28 May 2020 03:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sw0rt0kzpIX/gUx8+hCgXRUMgtmjnf69jO+OqqsmVeg=;
 b=UtM8cW31AvkQC00j8DXuOSIp629fS3hCuVZFezqVeULbkTblEPhvk6Ey2Fx0Qxnm1k
 eP34hG0buqPe5K7WeGfOwz7sE/7ofmoOGKqBZeDq1SVptUBW+RHbEIqHK4kH4zoM3ikI
 6Gr7P1OP9YmJZDnHE8xj4lgD/Aa5FQSJgevNB8GBCI3GZCQ9v+1qViC+tGIPFIZ0O4CW
 lLAPIdiqZTXFRwHlp4VKamYWM4JjMamCa932exOsrAbc+JaljC6bSKdjdaJVwAjnOZ2L
 lD4dgsSSntxzABZIeSuNi/zfJKAWME61JRPdDGgvfBryQzY6dh+zNnT6XOw5/6lSC3Dr
 s5CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sw0rt0kzpIX/gUx8+hCgXRUMgtmjnf69jO+OqqsmVeg=;
 b=qeW5DOijUBYA9PL7cyzaMUgLveCvpkFnJM3rg+zUlf6W8Uk7biZa7BhjAamBv3i37L
 VLmJxg3e16iQKHa3ol98C3BZDqaWZI+PgGGcRV+o9hLIC0nCGneHqz9biprL/zg8kGsf
 ksYaDtPT5Xxy7WanduFufuDM3vFndHUTb0PlNB6qMR1zrpQKwVgfR5ar5WwkVmEaaf9n
 ih/ffO2Yw9tiLhi82dqnVOnGH8Wwvpfm6INAM6xHnCO+HPDnQ2B1qqQx5Xgd7Qf+qbLr
 bUYZ47yzqNyLAWC4BP2Wu/kJOwgtRP8H/OC6bTshFkXxZ1u6tY78S4+Duubavk4aRwbG
 9WuA==
X-Gm-Message-State: AOAM532TSIOin0rf9Jhg6TLYvRJfgSRhcryarXef2TCiM4R4ph/NI4Tw
 ohdIAuptf1LeGzvtFRGM+b4=
X-Google-Smtp-Source: ABdhPJzcLA0+TQPlgAm8Qs94D4yKVFqRRUBD1tklJ3GnQ1Zw51/zVWrAlHppT6eTOe4HIMuqeGm2kg==
X-Received: by 2002:a62:1b87:: with SMTP id b129mr2370316pfb.162.1590661265781; 
 Thu, 28 May 2020 03:21:05 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id g65sm370180pfb.61.2020.05.28.03.21.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 03:21:05 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] sbp-target: add the missed kfree() in an error path
Date: Thu, 28 May 2020 18:20:56 +0800
Message-Id: <20200528102056.911825-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Spam-Score: 1.7 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (hslester96[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (hslester96[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.194 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jeFf4-00AeLr-GY
X-Mailman-Approved-At: Sun, 21 Jun 2020 18:46:21 +0000
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
Cc: linux1394-devel@lists.sourceforge.net, Chris Boot <bootc@bootc.net>,
 linux-scsi@vger.kernel.org, "Martin K . Petersen" <martin.petersen@oracle.com>,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 Nicholas Bellinger <nab@linux-iscsi.org>, target-devel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

sbp_fetch_command() forgets to call kfree() in an error path.
Add the missed call to fix it.

Fixes: a511ce339780 ("sbp-target: Initial merge of firewire/ieee-1394 target mode support")
Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/target/sbp/sbp_target.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/target/sbp/sbp_target.c b/drivers/target/sbp/sbp_target.c
index e4a9b9fe3dfb..504a755ea344 100644
--- a/drivers/target/sbp/sbp_target.c
+++ b/drivers/target/sbp/sbp_target.c
@@ -1128,8 +1128,10 @@ static int sbp_fetch_command(struct sbp_target_request *req)
 				req->orb_pointer + sizeof(req->orb),
 				req->cmd_buf + sizeof(req->orb.command_block),
 				copy_len);
-		if (ret != RCODE_COMPLETE)
+		if (ret != RCODE_COMPLETE) {
+			kfree(req->cmd_buf);
 			return -EIO;
+		}
 	}
 
 	return 0;
-- 
2.26.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
