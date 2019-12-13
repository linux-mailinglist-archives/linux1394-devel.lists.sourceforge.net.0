Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6269B11E35D
	for <lists+linux1394-devel@lfdr.de>; Fri, 13 Dec 2019 13:10:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1ifjlp-0008Aj-0U; Fri, 13 Dec 2019 12:10:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yukuai3@huawei.com>) id 1ifjlo-0008Ad-7F
 for linux1394-devel@lists.sourceforge.net; Fri, 13 Dec 2019 12:10:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7unL4WufRnrr4P8EpN9edscW2rg+O2KkzAShwOPB3II=; b=A9VYh1rJhZn76p9Spe2kyQjYWZ
 oh4hQGqxU9WIgvW8ipmrf6YdxTeAYf3G30pG4TCTUXAvXY4BetUCSJ6RnKFAMwch3hFqqGp3itsew
 OeciWxYLlbnwu3slPt1cISKia6d5VU6wPATh+KvuwXeyPGmt47wI7eorEErSS0Nin504=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7unL4WufRnrr4P8EpN9edscW2rg+O2KkzAShwOPB3II=; b=Y
 n+pnRjOMqse9PV4JYX68tBUbEGittJ5ppRIHcETUde1W68kEB5XzQlOKnB09NB8O9vkxUN1zgsfRr
 APY6hCuAVvrGquubj9LzOsUmZYLj53uoF/V95g9JSDeO6UvcNtGTamIRmyTa0CJ1XqCibP850aYd5
 DIUflYBjhW2XqYFQ=;
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ifjlk-00Gxje-0n
 for linux1394-devel@lists.sourceforge.net; Fri, 13 Dec 2019 12:10:08 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B435D8AB0A8FF068C476;
 Fri, 13 Dec 2019 20:09:54 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Fri, 13 Dec 2019
 20:09:46 +0800
From: yu kuai <yukuai3@huawei.com>
To: <stefanr@s5r6.in-berlin.de>
Subject: [PATCH] firewire: net: remove set but not used variable 'guid'
Date: Fri, 13 Dec 2019 20:09:19 +0800
Message-ID: <20191213120919.8080-1-yukuai3@huawei.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1ifjlk-00Gxje-0n
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
Cc: zhengbin13@huawei.com, yukuai3@huawei.com,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 yi.zhang@huawei.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Rml4ZXMgZ2NjICctV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlJyB3YXJuaW5nOgoKZHJpdmVycy9m
aXJld2lyZS9uZXQuYzogSW4gZnVuY3Rpb24g4oCYZnduZXRfZmluaXNoX2luY29taW5nX3BhY2tl
dOKAmToKZHJpdmVycy9maXJld2lyZS9uZXQuYzo0OTM6OTogd2FybmluZzogdmFyaWFibGUg4oCY
Z3VpZOKAmSBzZXQgYnV0IG5vdAp1c2VkIFstV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlXQoKU2ln
bmVkLW9mZi1ieTogeXUga3VhaSA8eXVrdWFpM0BodWF3ZWkuY29tPgotLS0KIGRyaXZlcnMvZmly
ZXdpcmUvbmV0LmMgfCAyIC0tCiAxIGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2ZpcmV3aXJlL25ldC5jIGIvZHJpdmVycy9maXJld2lyZS9uZXQuYwpp
bmRleCA3MTVlNDkxZGZiYzMuLjI4Nzg1NjQyYTVjNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9maXJl
d2lyZS9uZXQuYworKysgYi9kcml2ZXJzL2ZpcmV3aXJlL25ldC5jCkBAIC00OTAsNyArNDkwLDYg
QEAgc3RhdGljIGludCBmd25ldF9maW5pc2hfaW5jb21pbmdfcGFja2V0KHN0cnVjdCBuZXRfZGV2
aWNlICpuZXQsCiB7CiAJc3RydWN0IGZ3bmV0X2RldmljZSAqZGV2OwogCWludCBzdGF0dXM7Ci0J
X19iZTY0IGd1aWQ7CiAKIAlzd2l0Y2ggKGV0aGVyX3R5cGUpIHsKIAljYXNlIEVUSF9QX0FSUDoK
QEAgLTUxMiw3ICs1MTEsNiBAQCBzdGF0aWMgaW50IGZ3bmV0X2ZpbmlzaF9pbmNvbWluZ19wYWNr
ZXQoc3RydWN0IG5ldF9kZXZpY2UgKm5ldCwKIAkgKiBQYXJzZSB0aGUgZW5jYXBzdWxhdGlvbiBo
ZWFkZXIuIFRoaXMgYWN0dWFsbHkgZG9lcyB0aGUgam9iIG9mCiAJICogY29udmVydGluZyB0byBh
biBldGhlcm5ldC1saWtlIHBzZXVkbyBmcmFtZSBoZWFkZXIuCiAJICovCi0JZ3VpZCA9IGNwdV90
b19iZTY0KGRldi0+Y2FyZC0+Z3VpZCk7CiAJaWYgKGRldl9oYXJkX2hlYWRlcihza2IsIG5ldCwg
ZXRoZXJfdHlwZSwKIAkJCSAgIGlzX2Jyb2FkY2FzdCA/IG5ldC0+YnJvYWRjYXN0IDogbmV0LT5k
ZXZfYWRkciwKIAkJCSAgIE5VTEwsIHNrYi0+bGVuKSA+PSAwKSB7Ci0tIAoyLjE3LjIKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbWFpbGluZyBsaXN0
IGxpbnV4MTM5NC1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgxMzk0LWRldmVsCg==
