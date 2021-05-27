Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 201D0392C8F
	for <lists+linux1394-devel@lfdr.de>; Thu, 27 May 2021 13:22:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lmE65-0002Qe-2V; Thu, 27 May 2021 11:22:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <chengzhihao1@huawei.com>) id 1lmE63-0002QW-PK
 for linux1394-devel@lists.sourceforge.net; Thu, 27 May 2021 11:22:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lLSxbQvXJEsCf307vpH6k6/eIMnZRZp6KiVSKvHYyhk=; b=infeX23pL4mwfwS23ZlWjZf2sU
 Uz7pwTJ3c1hyPBxSStB2WcURNMo5TEdlBHx4rpmHyYyjH12TbZSWrKQoksCS3jv/xpqPHsDjII9vs
 7xkHjkOgbNAzSHTD1XUecTydsWRHGSsUXIcU3ke5MOI9W745QyaoZGzF2GHqwD143XrM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=lLSxbQvXJEsCf307vpH6k6/eIMnZRZp6KiVSKvHYyhk=; b=X
 QUvH4qBxx871BVUlbmVUmuGbo6PaKzOXumNZQazrkjUkO49zDiTk4uWynTDb+oeKfWryiGyz8Oukh
 LjKY7b1sagL2V5yZfNJlVs1sPEcUmnADJEAxDkqkimrCEcUs38qMsAFz4+VGM9jap+9bgLZ3WnAhE
 c6aYYtux5crwW49s=;
Received: from szxga03-in.huawei.com ([45.249.212.189])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lmE5r-0000df-Fj
 for linux1394-devel@lists.sourceforge.net; Thu, 27 May 2021 11:22:39 +0000
Received: from dggeml765-chm.china.huawei.com (unknown [172.30.72.53])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4FrQL62R6Kz663t;
 Thu, 27 May 2021 19:18:38 +0800 (CST)
Received: from dggema761-chm.china.huawei.com (10.1.198.203) by
 dggeml765-chm.china.huawei.com (10.1.199.175) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2176.2; Thu, 27 May 2021 19:22:16 +0800
Received: from huawei.com (10.175.127.227) by dggema761-chm.china.huawei.com
 (10.1.198.203) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 27
 May 2021 19:22:15 +0800
From: Zhihao Cheng <chengzhihao1@huawei.com>
To: <stefanr@s5r6.in-berlin.de>, <yoshfuji@linux-ipv6.org>,
 <davem@davemloft.net>
Subject: [PATCH] firewire: net: Remove unused variable 'dev' and 'guid'
Date: Thu, 27 May 2021 19:31:40 +0800
Message-ID: <20210527113140.304008-1-chengzhihao1@huawei.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-Originating-IP: [10.175.127.227]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggema761-chm.china.huawei.com (10.1.198.203)
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.189 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lmE5r-0000df-Fj
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
Cc: yukuai3@huawei.com, linux1394-devel@lists.sourceforge.net,
 chengzhihao1@huawei.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Rml4IHRoZSBmb2xsb3dpbmcgZ2NjIHdhcm5pbmc6Cgpkcml2ZXJzL2ZpcmV3aXJlL25ldC5jOjQ5
MToyMzogd2FybmluZzogdmFyaWFibGUg4oCYZGV24oCZIHNldCBidXQgbm90IHVzZWQKWy1XdW51
c2VkLWJ1dC1zZXQtdmFyaWFibGVdCgpGaXhlczogNjc1MmM4ZGI4ZTBjZiAoImZpcmV3aXJlIG5l
dCwgaXB2NCBhcnA6IEV4dGVuZCBoYXJkd2FyZSAuLi4iKQpSZXBvcnRlZC1ieTogSHVsayBSb2Jv
dCA8aHVsa2NpQGh1YXdlaS5jb20+ClNpZ25lZC1vZmYtYnk6IFpoaWhhbyBDaGVuZyA8Y2hlbmd6
aGloYW8xQGh1YXdlaS5jb20+Ci0tLQogZHJpdmVycy9maXJld2lyZS9uZXQuYyB8IDQgLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9maXJl
d2lyZS9uZXQuYyBiL2RyaXZlcnMvZmlyZXdpcmUvbmV0LmMKaW5kZXggNzE1ZTQ5MWRmYmMzLi40
YzNmZDJlZWQxZGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZmlyZXdpcmUvbmV0LmMKKysrIGIvZHJp
dmVycy9maXJld2lyZS9uZXQuYwpAQCAtNDg4LDkgKzQ4OCw3IEBAIHN0YXRpYyBpbnQgZnduZXRf
ZmluaXNoX2luY29taW5nX3BhY2tldChzdHJ1Y3QgbmV0X2RldmljZSAqbmV0LAogCQkJCQlzdHJ1
Y3Qgc2tfYnVmZiAqc2tiLCB1MTYgc291cmNlX25vZGVfaWQsCiAJCQkJCWJvb2wgaXNfYnJvYWRj
YXN0LCB1MTYgZXRoZXJfdHlwZSkKIHsKLQlzdHJ1Y3QgZnduZXRfZGV2aWNlICpkZXY7CiAJaW50
IHN0YXR1czsKLQlfX2JlNjQgZ3VpZDsKIAogCXN3aXRjaCAoZXRoZXJfdHlwZSkgewogCWNhc2Ug
RVRIX1BfQVJQOgpAQCAtNTAzLDcgKzUwMSw2IEBAIHN0YXRpYyBpbnQgZnduZXRfZmluaXNoX2lu
Y29taW5nX3BhY2tldChzdHJ1Y3QgbmV0X2RldmljZSAqbmV0LAogCQlnb3RvIGVycjsKIAl9CiAK
LQlkZXYgPSBuZXRkZXZfcHJpdihuZXQpOwogCS8qIFdyaXRlIG1ldGFkYXRhLCBhbmQgdGhlbiBw
YXNzIHRvIHRoZSByZWNlaXZlIGxldmVsICovCiAJc2tiLT5kZXYgPSBuZXQ7CiAJc2tiLT5pcF9z
dW1tZWQgPSBDSEVDS1NVTV9OT05FOwpAQCAtNTEyLDcgKzUwOSw2IEBAIHN0YXRpYyBpbnQgZndu
ZXRfZmluaXNoX2luY29taW5nX3BhY2tldChzdHJ1Y3QgbmV0X2RldmljZSAqbmV0LAogCSAqIFBh
cnNlIHRoZSBlbmNhcHN1bGF0aW9uIGhlYWRlci4gVGhpcyBhY3R1YWxseSBkb2VzIHRoZSBqb2Ig
b2YKIAkgKiBjb252ZXJ0aW5nIHRvIGFuIGV0aGVybmV0LWxpa2UgcHNldWRvIGZyYW1lIGhlYWRl
ci4KIAkgKi8KLQlndWlkID0gY3B1X3RvX2JlNjQoZGV2LT5jYXJkLT5ndWlkKTsKIAlpZiAoZGV2
X2hhcmRfaGVhZGVyKHNrYiwgbmV0LCBldGhlcl90eXBlLAogCQkJICAgaXNfYnJvYWRjYXN0ID8g
bmV0LT5icm9hZGNhc3QgOiBuZXQtPmRldl9hZGRyLAogCQkJICAgTlVMTCwgc2tiLT5sZW4pID49
IDApIHsKLS0gCjIuMjUuNAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwptYWlsaW5nIGxpc3QgbGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9saW51eDEz
OTQtZGV2ZWwK
