Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8B73803BB
	for <lists+linux1394-devel@lfdr.de>; Fri, 14 May 2021 08:44:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lhRYn-00027l-0d; Fri, 14 May 2021 06:44:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pulehui@huawei.com>) id 1lhRYk-00027Y-VZ
 for linux1394-devel@lists.sourceforge.net; Fri, 14 May 2021 06:44:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hTHgeLDseGB/ZmdqwH3Xjq/f1+jdCg0L9D4vZ+cqpGU=; b=X2MSPL6Lmb+GWViIdyztgUyTP0
 txRlKU9m5z5DiF7So6Z5DtuVjrfZ7FwEBPIER80vk0Hhx+HyWSjXe8Dv/o04sMR+9GWUm6n3ejxGx
 SCBH8mqJdN3k7diP+Pkc+at+E3lpwBsxzrOopCuZiJxKXCO1aKWsoQykt02vi7ks5fOE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hTHgeLDseGB/ZmdqwH3Xjq/f1+jdCg0L9D4vZ+cqpGU=; b=g
 6/dXq9ECCzLCvT4NmCg/yktzNs4LF4Ord3FoGStDQeis96VNupTs7UeZ6e6uYVtyup0hpXF2VKdrJ
 YX7HMiMLZzAdVOmPe4/RRfetRG/o/ZVZH37qnA7rSKMZcUriqUCAdJt+kYm3WDY29BWnXxGy75Jwr
 z97zl+Hu+/1YcJDU=;
Received: from szxga05-in.huawei.com ([45.249.212.191])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lhRYf-0001Q9-JT
 for linux1394-devel@lists.sourceforge.net; Fri, 14 May 2021 06:44:30 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4FhJpR19sdzkWLg;
 Fri, 14 May 2021 14:41:35 +0800 (CST)
Received: from ubuntu1804.huawei.com (10.67.174.98) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.498.0; Fri, 14 May 2021 14:44:11 +0800
From: Pu Lehui <pulehui@huawei.com>
To: <stefanr@s5r6.in-berlin.de>
Subject: [PATCH -next] firewire: net: remove unused variable 'guid'
Date: Fri, 14 May 2021 14:44:38 +0800
Message-ID: <20210514064438.66456-1-pulehui@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.67.174.98]
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lhRYf-0001Q9-JT
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
Cc: linux-kernel@vger.kernel.or, linux1394-devel@lists.sourceforge.net,
 pulehui@huawei.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

R0NDIHJlcG9ydHMgdGhlIGZvbGxvd2luZyB3YXJuaW5nIHdpdGggVz0xOgoKZHJpdmVycy9maXJl
d2lyZS9uZXQuYzo0OTM6OTogd2FybmluZzoKIHZhcmlhYmxlIOKAmGd1aWTigJkgc2V0IGJ1dCBu
b3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KICA0OTMgfCAgX19iZTY0IGd1aWQ7
CiAgICAgIHwgICAgICAgICBefn5+CgpUaGlzIHZhcmlhYmxlIGlzIG5vdCB1c2VkIGluIGZ1bmN0
aW9uICwgdGhpcyBjb21taXQKcmVtb3ZlIGl0IHRvIGZpeCB0aGUgd2FybmluZy4KClNpZ25lZC1v
ZmYtYnk6IFB1IExlaHVpIDxwdWxlaHVpQGh1YXdlaS5jb20+Ci0tLQogZHJpdmVycy9maXJld2ly
ZS9uZXQuYyB8IDQgLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9maXJld2lyZS9uZXQuYyBiL2RyaXZlcnMvZmlyZXdpcmUvbmV0LmMKaW5k
ZXggNzE1ZTQ5MWRmYmMzLi40YzNmZDJlZWQxZGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZmlyZXdp
cmUvbmV0LmMKKysrIGIvZHJpdmVycy9maXJld2lyZS9uZXQuYwpAQCAtNDg4LDkgKzQ4OCw3IEBA
IHN0YXRpYyBpbnQgZnduZXRfZmluaXNoX2luY29taW5nX3BhY2tldChzdHJ1Y3QgbmV0X2Rldmlj
ZSAqbmV0LAogCQkJCQlzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCB1MTYgc291cmNlX25vZGVfaWQsCiAJ
CQkJCWJvb2wgaXNfYnJvYWRjYXN0LCB1MTYgZXRoZXJfdHlwZSkKIHsKLQlzdHJ1Y3QgZnduZXRf
ZGV2aWNlICpkZXY7CiAJaW50IHN0YXR1czsKLQlfX2JlNjQgZ3VpZDsKIAogCXN3aXRjaCAoZXRo
ZXJfdHlwZSkgewogCWNhc2UgRVRIX1BfQVJQOgpAQCAtNTAzLDcgKzUwMSw2IEBAIHN0YXRpYyBp
bnQgZnduZXRfZmluaXNoX2luY29taW5nX3BhY2tldChzdHJ1Y3QgbmV0X2RldmljZSAqbmV0LAog
CQlnb3RvIGVycjsKIAl9CiAKLQlkZXYgPSBuZXRkZXZfcHJpdihuZXQpOwogCS8qIFdyaXRlIG1l
dGFkYXRhLCBhbmQgdGhlbiBwYXNzIHRvIHRoZSByZWNlaXZlIGxldmVsICovCiAJc2tiLT5kZXYg
PSBuZXQ7CiAJc2tiLT5pcF9zdW1tZWQgPSBDSEVDS1NVTV9OT05FOwpAQCAtNTEyLDcgKzUwOSw2
IEBAIHN0YXRpYyBpbnQgZnduZXRfZmluaXNoX2luY29taW5nX3BhY2tldChzdHJ1Y3QgbmV0X2Rl
dmljZSAqbmV0LAogCSAqIFBhcnNlIHRoZSBlbmNhcHN1bGF0aW9uIGhlYWRlci4gVGhpcyBhY3R1
YWxseSBkb2VzIHRoZSBqb2Igb2YKIAkgKiBjb252ZXJ0aW5nIHRvIGFuIGV0aGVybmV0LWxpa2Ug
cHNldWRvIGZyYW1lIGhlYWRlci4KIAkgKi8KLQlndWlkID0gY3B1X3RvX2JlNjQoZGV2LT5jYXJk
LT5ndWlkKTsKIAlpZiAoZGV2X2hhcmRfaGVhZGVyKHNrYiwgbmV0LCBldGhlcl90eXBlLAogCQkJ
ICAgaXNfYnJvYWRjYXN0ID8gbmV0LT5icm9hZGNhc3QgOiBuZXQtPmRldl9hZGRyLAogCQkJICAg
TlVMTCwgc2tiLT5sZW4pID49IDApIHsKLS0gCjIuMTcuMQoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwptYWlsaW5nIGxpc3QgbGludXgxMzk0LWRldmVs
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby9saW51eDEzOTQtZGV2ZWwK
