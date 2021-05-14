Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E4F3803FC
	for <lists+linux1394-devel@lfdr.de>; Fri, 14 May 2021 09:06:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lhRto-0002xG-Bv; Fri, 14 May 2021 07:06:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pulehui@huawei.com>) id 1lhRtj-0002wy-FI
 for linux1394-devel@lists.sourceforge.net; Fri, 14 May 2021 07:06:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hTHgeLDseGB/ZmdqwH3Xjq/f1+jdCg0L9D4vZ+cqpGU=; b=U3HkjQwwy+ojHpI8QM7ORtibu2
 3Qqn1w1UJG/RRwLfW7hiyGqvR5rCDqzYT++CJZc/RbWBoOREx92CD3Zdn0C+MUGV1odDq1VSm42G2
 LoZqz1XwCmivv0VJt6n1opXqucypr1XbXjsACKx4sD7zaLmqCNGlsn1wb888V+Kh7tj0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hTHgeLDseGB/ZmdqwH3Xjq/f1+jdCg0L9D4vZ+cqpGU=; b=Q
 hXOgkM9E1lLzlQcHV6ywyEuH/YwflbSSOeDm9bVjFtyJIxTwXPTwHeOlUOSJTyV5xQFn7+4LessQT
 dZbOHddMMZyZ6e07W14TkbYPOn6XnR7VnUPuzPfuxiXgDlh1lPoGyYGov5CvAEwIdG1lvkPPV/dG5
 4+ljvvfhY3oBG4jQ=;
Received: from szxga07-in.huawei.com ([45.249.212.35])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lhRtg-007sBk-AC
 for linux1394-devel@lists.sourceforge.net; Fri, 14 May 2021 07:06:13 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4FhKHT2njszBsGN;
 Fri, 14 May 2021 15:03:17 +0800 (CST)
Received: from ubuntu1804.huawei.com (10.67.174.98) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.498.0; Fri, 14 May 2021 15:05:54 +0800
From: Pu Lehui <pulehui@huawei.com>
To: <stefanr@s5r6.in-berlin.de>
Subject: [PATCH -next] firewire: net: remove unused variable 'guid'
Date: Fri, 14 May 2021 15:06:21 +0800
Message-ID: <20210514070621.73356-1-pulehui@huawei.com>
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
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lhRtg-007sBk-AC
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
