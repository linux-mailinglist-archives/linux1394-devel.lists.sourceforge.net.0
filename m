Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1187C47F604
	for <lists+linux1394-devel@lfdr.de>; Sun, 26 Dec 2021 10:30:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1n1PrS-0003W9-AU; Sun, 26 Dec 2021 09:30:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ele.mon@jllresort.com>) id 1n1PrJ-0003Vx-F7
 for linux1394-devel@lists.sourceforge.net; Sun, 26 Dec 2021 09:30:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fbpK1gg2DBIuwH8TwCaF9lb8np4QPXsvZBX8A5ht88I=; b=aZI8c66B7P4zvRnMcc8dl+tCFw
 oik+QUuiSMtYRvdZRAJtcK/qhoEJuxIVyMVyomaCMGcjjLxzIiz8w5lsbRR2qhDJw0x+S69LdygLn
 lQ6MhPoIYpsZPqakTLcGjEJG44U8K2XgTa26eDyLTWdTWVGzTyAMDkDIxgchLnhQ3kZE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fbpK1gg2DBIuwH8TwCaF9lb8np4QPXsvZBX8A5ht88I=; b=e
 ZAjzIG8N7dlTg6F/WlS8KELk20k4EZ8X0sKNQwxbqbx1jREpKBcRpXdBXroBZMSmFPyJe856kCjUW
 Xr0neYsaEDAJ3jH7HNW98ud/+UE9pcBAXYFNp/zRl+yzLa5vFOA9kUfFtLZV+uoz8g5ZfmEKB34Dv
 GVTgO4CEZCDJVFOU=;
Received: from slot0.jllresort.com ([62.197.136.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n1PrH-0006k6-DG
 for linux1394-devel@lists.sourceforge.net; Sun, 26 Dec 2021 09:30:27 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim; d=jllresort.com;
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=ele.mon@jllresort.com; bh=McJf1aF6PZmkfpwwcyzbT+X0UxA=;
 b=e6e0Bq1K70dvAyBVwO+cpyM4Q0y2/1v3tXgtfbe40+fN2XYnjMcZGoh3NFMZQIP9r9z5Wnxyz1mB
 cuja3MwWiFAfOQsgkh9U2np9wikdBBnQOybQ5Oyl6qgq81789RWXcEne0qR2K5TDl8CqE4lGC7Lw
 +J0AsCstAJLd/YuH3nGR/7UacaKZDvB5qyEpMb8D2IE7oWC6IL0ISR796g4zPVushjbA6l0oe3hb
 Leczi8gZcevOJI9aADVJv+GNCe3Yeh0NcDIWJaU/1ZniyXEofZtTIF8HYNmsEU0HsrTF3zdXQquL
 HIkL46SmuOmevBae7hkXFiirVkW1MK7bUwTLFg==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=jllresort.com;
 b=1YMW5QIXSoSuQ2keJ2FVTbCtEKkH+ZG4h41TmwL6AMwRTnf3CYTQLGBW1s3RclRZBdmLTP0FF+p/
 45foUL+vClNJMfMUwTT2P72FDXT97aBZqEDbYCMC63ELpCCmNkhX1OnCncbbCwMIWYZX45o64mBY
 N8D3BzB0zNvxGUlUW9UmnEbMU6sai6EtjLRcOhz5Unf5gpnr0HfYuXpN/ZwXHSVglLQdczM2jcHE
 r4r6rX4IRQ1tkCXc4jfPY04v4bahvUGzLT3y6Hqgb350MBoMcU9uhdvccghnIsNxqaqZgU+VXwjj
 4U0YQYl755nw1S3EM0M6/HAiT6f3Y+VcX2c1PQ==;
From: ele.mon@jllresort.com
To: linux1394-devel@lists.sourceforge.net
Subject: Happy Weekend:
Date: 26 Dec 2021 10:29:30 +0100
Message-ID: <20211226102855.39825C3C20A0723B@jllresort.com>
MIME-Version: 1.0
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Greetings to you linux1394-devel, I was wondering if you got
 my previous email? I have been trying to reach you by email
 linux1394-devel@lists.sourceforge.net, 
 kindly get back to me swiftly, it is very important and urgent. 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [62.197.136.5 listed in bl.mailspike.net]
 0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [62.197.136.5 listed in dnsbl-1.uceprotect.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
X-Headers-End: 1n1PrH-0006k6-DG
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
Reply-To: mustafa.ayvaz@ayvazburosu.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Greetings to you linux1394-devel,

I was wondering if you got my previous email? I have been trying 
to reach you by email linux1394-devel@lists.sourceforge.net, 
kindly get back to me swiftly, it is very important and urgent.

Thanks
Mustafa Ayvaz
Email: mustafa.ayvaz@ayvazburosu.com


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
