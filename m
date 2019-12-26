Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0762912AC36
	for <lists+linux1394-devel@lfdr.de>; Thu, 26 Dec 2019 13:19:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1ikS6j-0003w2-Sx; Thu, 26 Dec 2019 12:19:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yukuai3@huawei.com>) id 1ikS6h-0003vq-Vm
 for linux1394-devel@lists.sourceforge.net; Thu, 26 Dec 2019 12:19:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BjJPYmmKs3DG6Aw27p8YUBkv1UDdfyITMOgcIiFFCiQ=; b=DBcTqh6yMX0TBnn8YMxsB6oYxN
 DOXnORHVTtK83VPqIrjlCD7YQVOIek81o4mLV3Ns1qtSMxL5AwLDuDgcggDKyzMpJ37zzE5WYNBCB
 xClut91aee34/TCCvLFDL3G3QpZvj9XCuWbB+jfBmlyr9qQQNjpEvP0sUi3G4bqSq8q0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=BjJPYmmKs3DG6Aw27p8YUBkv1UDdfyITMOgcIiFFCiQ=; b=B
 ol5CTrLb8pPl21cU1laWRB6b5hfKWvPf+EfcPdaGdVAxsncvc2/cgZFgEnXNkFhnrfNSXpDfTH/zL
 PgkFeGYAHmbCFqyxH9Hv1vKqXA98+5AK4BmcwcPZx2CbwqQbfzL5c47bVoqwxx9Zwv8BsF+OCdQtb
 +aJHLyjzywM0b/sE=;
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ikS6f-00EKcP-PY
 for linux1394-devel@lists.sourceforge.net; Thu, 26 Dec 2019 12:19:11 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 661CE9B2BE8C528170E5;
 Thu, 26 Dec 2019 20:18:59 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Thu, 26 Dec 2019
 20:18:48 +0800
From: yu kuai <yukuai3@huawei.com>
To: <stefanr@s5r6.in-berlin.de>
Subject: [PATCH] firewire: net: remove set but not used variable 'guid'
Date: Thu, 26 Dec 2019 20:18:15 +0800
Message-ID: <20191226121815.11495-1-yukuai3@huawei.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ikS6f-00EKcP-PY
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
Z3VpZOKAmSBzZXQgYnV0IG5vdAp1c2VkCgpJdCBpcyBuZXZlciB1c2VkLCBhbmQgc28gY2FuIGJl
IHJlbW92ZWQuCgpTaWduZWQtb2ZmLWJ5OiB5dSBrdWFpIDx5dWt1YWkzQGh1YXdlaS5jb20+Ci0t
LQogZHJpdmVycy9maXJld2lyZS9uZXQuYyB8IDIgLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZmlyZXdpcmUvbmV0LmMgYi9kcml2ZXJzL2Zp
cmV3aXJlL25ldC5jCmluZGV4IDcxNWU0OTFkZmJjMy4uMjg3ODU2NDJhNWM1IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2ZpcmV3aXJlL25ldC5jCisrKyBiL2RyaXZlcnMvZmlyZXdpcmUvbmV0LmMKQEAg
LTQ5MCw3ICs0OTAsNiBAQCBzdGF0aWMgaW50IGZ3bmV0X2ZpbmlzaF9pbmNvbWluZ19wYWNrZXQo
c3RydWN0IG5ldF9kZXZpY2UgKm5ldCwKIHsKIAlzdHJ1Y3QgZnduZXRfZGV2aWNlICpkZXY7CiAJ
aW50IHN0YXR1czsKLQlfX2JlNjQgZ3VpZDsKIAogCXN3aXRjaCAoZXRoZXJfdHlwZSkgewogCWNh
c2UgRVRIX1BfQVJQOgpAQCAtNTEyLDcgKzUxMSw2IEBAIHN0YXRpYyBpbnQgZnduZXRfZmluaXNo
X2luY29taW5nX3BhY2tldChzdHJ1Y3QgbmV0X2RldmljZSAqbmV0LAogCSAqIFBhcnNlIHRoZSBl
bmNhcHN1bGF0aW9uIGhlYWRlci4gVGhpcyBhY3R1YWxseSBkb2VzIHRoZSBqb2Igb2YKIAkgKiBj
b252ZXJ0aW5nIHRvIGFuIGV0aGVybmV0LWxpa2UgcHNldWRvIGZyYW1lIGhlYWRlci4KIAkgKi8K
LQlndWlkID0gY3B1X3RvX2JlNjQoZGV2LT5jYXJkLT5ndWlkKTsKIAlpZiAoZGV2X2hhcmRfaGVh
ZGVyKHNrYiwgbmV0LCBldGhlcl90eXBlLAogCQkJICAgaXNfYnJvYWRjYXN0ID8gbmV0LT5icm9h
ZGNhc3QgOiBuZXQtPmRldl9hZGRyLAogCQkJICAgTlVMTCwgc2tiLT5sZW4pID49IDApIHsKLS0g
CjIuMTcuMgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwptYWlsaW5nIGxpc3QgbGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRw
czovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9saW51eDEzOTQtZGV2ZWwK
