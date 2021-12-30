Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D9D481AA7
	for <lists+linux1394-devel@lfdr.de>; Thu, 30 Dec 2021 09:05:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1n2qQd-000471-Hg; Thu, 30 Dec 2021 08:04:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rando@RandodeMacBook-Pro.local>) id 1n2qQb-00046v-HW
 for linux1394-devel@lists.sourceforge.net; Thu, 30 Dec 2021 08:04:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eh7fGKrTJcRUsDzYcgFtmEB5Du8Ps0PAjXyNdg//HAY=; b=Cmvk9JnjtQ+APutmN+F41flE8A
 YT2k2X4tXo4R9pHM9/wT8gKr6YxHIlg7maMwS82CaxTazhssBsihWAqE+uuFScscQ1SGjYYP+Jhle
 X+KAhE3LpF+XqQj/u1qJxE3UTPeu4qfiH0Qet8V7zbrhhoxXyg0OCVWhJpBiCzVGqyGY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=eh7fGKrTJcRUsDzYcgFtmEB5Du8Ps0PAjXyNdg//HAY=; b=F
 M0WQBSFrzMW9AruEkCkyFE6zCloJz6DL+hYwcQpGp5aaz0nb9XZonJmeLcCxSaOUwS3WyedJDb2nq
 WPpcqczJ0H9GCYrBSBIU21mHYvDNKi79KTYwr2lbx85BbFlbgzZiiVmRlxSyby5YfINXtw6eaZNRI
 LzMZVQTwTJ2LyWEs=;
Received: from [106.11.30.60] (helo=RandodeMacBook-Pro.local)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1n2qQW-0002Wb-Lu
 for linux1394-devel@lists.sourceforge.net; Thu, 30 Dec 2021 08:04:49 +0000
Received: by RandodeMacBook-Pro.local (Postfix, from userid 501)
 id 5D94D63EB0FE; Thu, 30 Dec 2021 14:57:11 +0800 (CST)
From: ycaibb <ycaibb@gmail.com>
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH] treewide: fix resource leaks
Date: Thu, 30 Dec 2021 14:57:05 +0800
Message-Id: <20211230065705.94753-1-ycaibb@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Spam-Score: 7.2 (+++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In the method main() of nosy-dump.c, the files opened may
 not explicitly closed. Signed-off-by: ycaibb --- tools/firewire/nosy-dump.c
 | 7 ++++++- 1 file changed, 6 insertions(+),
 1 deletion(-) diff --git a/tools/firewire/nosy-dump.c
 b/tools/firewire/nosy-dump.c index 156e0356e814..d5431bb6ca99 100644 ---
 a/tools/firewire/nosy-dump.c +++ b/tools/firewire/nosy-dump.c @@ -972, 8 +972,
 12 @@ int [...] 
 Content analysis details:   (7.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        DNS: Envelope sender has no MX or A DNS records
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ycaibb[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 SPOOFED_FREEMAIL_NO_RDNS From SPOOFED_FREEMAIL and no rDNS
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list 1.3 SPOOFED_FREEMAIL       No description available.
 1.5 SPOOF_GMAIL_MID        From Gmail but it doesn't seem to be...
X-Headers-End: 1n2qQW-0002Wb-Lu
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
 ycaibb <ycaibb@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In the method main() of nosy-dump.c, the files opened may not explicitly closed.

Signed-off-by: ycaibb <ycaibb@gmail.com>
---
 tools/firewire/nosy-dump.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/tools/firewire/nosy-dump.c b/tools/firewire/nosy-dump.c
index 156e0356e814..d5431bb6ca99 100644
--- a/tools/firewire/nosy-dump.c
+++ b/tools/firewire/nosy-dump.c
@@ -972,8 +972,12 @@ int main(int argc, const char *argv[])
 
 	while (run) {
 		if (input != NULL) {
-			if (fread(&length, sizeof length, 1, input) != 1)
+			if (fread(&length, sizeof length, 1, input) != 1){
+				if (output != NULL)
+					fclose(output);
+				close(fd);
 				return 0;
+			}
 			fread(buf, 1, length, input);
 		} else {
 			poll(pollfds, 2, -1);
@@ -983,6 +987,7 @@ int main(int argc, const char *argv[])
 				case 'q':
 					if (output != NULL)
 						fclose(output);
+					close(fd);
 					return 0;
 				}
 			}
-- 
2.33.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
