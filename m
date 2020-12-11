Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 722812D76D0
	for <lists+linux1394-devel@lfdr.de>; Fri, 11 Dec 2020 14:44:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kniiH-0002Wu-IW; Fri, 11 Dec 2020 13:44:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <janjaap@daptechnology.com>) id 1kniiC-0002Wf-O8
 for linux1394-devel@lists.sourceforge.net; Fri, 11 Dec 2020 13:43:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:Cc:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4OZRNsE/4KlOrn1oEVqTgtoX+r1WxETFlKKRlK+ZROQ=; b=Z5FPYdyNcbAdluXSQ+EElFVs2Z
 nN8RlTczhxCmnANQH2iU+R23C/ozPohBtTEETuv3EUJmAXqq3lSV6fHGgSF1jUH3rYAtrUQEhsyJl
 wJXjMRUOzCNhjPpYC25iTMFqq6dR/toI4ZwWV4htkYYTr1gPLWx4wxsZN7RQ6lyeqxoA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:Cc:To:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4OZRNsE/4KlOrn1oEVqTgtoX+r1WxETFlKKRlK+ZROQ=; b=V
 n4s9CQAg+xPmGwdEfR5uChmiHD+XT0Hjee10RdyvqVvO2rt66NNMXwTlhsVGYqUlHDx8y9G51Jo9g
 DgLajYBuoG24wDzwkSSZ/WMA/azhHY8yr+PaeB6vxaDC8x65vafRVUxZnfgbTnvSCnufLAb3XacLt
 E6+dPALJJtItZNe4=;
Received: from [87.213.235.106] (helo=unlabelled-106-32-58-62.versatel.net)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1knii7-00A87K-KP
 for linux1394-devel@lists.sourceforge.net; Fri, 11 Dec 2020 13:43:56 +0000
X-Footer: ZGFwdGVjaG5vbG9neS5jb20=
Received: from [192.168.6.241] ([192.168.6.241])
 (authenticated user janjaap@daptechnology.com)
 by unlabelled-106-32-58-62.versatel.net with ESMTPSA
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits));
 Fri, 11 Dec 2020 14:12:27 +0100
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
From: Jan-Jaap van der Heijden <janjaap@daptechnology.com>
Subject: [PATCH 1/1] firewire: ohci: enable SLLZ059 erratum with XIO2213 OHCI
 chip
Message-ID: <e86c724b-009b-9f3b-3c1e-0804ac4c7a2b@daptechnology.com>
Date: Fri, 11 Dec 2020 14:12:26 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: daptechnology.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1knii7-00A87K-KP
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

VGhlIFhJTzIyMTMgUENJZSB0byAxMzk0YiBPSENJIGNvbnRyb2xsZXIgY2FuIGJlIHVzZWQgd2l0
aCBhbiBleHRlcm5hbApQSFkgY2hpcCBpbnN0ZWFkIG9mIHRoZSBidWlsdC1pbiBvbmUuIEluIG9y
ZGVyIHRvIHN1cHBvcnQgdGhlIGNvbWJpbmF0aW9uCm9mIHRoZSBYSU8yMjEzIHdpdGggYSBUU0I0
MUJBM0QgUEhZIGNoaXAsIHdlIG5lZWQgdG8gZW5hYmxlIHRoZSBTTExaMDU5CmVycmF0dW0gZm9y
IHRoZSBYSU8yMjEzIGxpa2Ugd2UgZG8gZm9yIG90aGVyIFRJIDEzOTQgbGluayBsYXllciBjaGlw
cy4KClNpZ25lZC1vZmYtYnk6IEphbi1KYWFwIHZhbiBkZXIgSGVpamRlbiA8amFuamFhcEBkYXB0
ZWNobm9sb2d5LmNvbT4KU2lnbmVkLW9mZi1ieTogSmVyb2VuIGRlIFpvZXRlbiA8amVyb2VuQGRh
cHRlY2hub2xvZ3kuY29tPgotLS0KCiDCoG9oY2kuYyB8wqDCoMKgIDQgKysrKwogwqAxIGZpbGUg
Y2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9maXJld2lyZS9v
aGNpLmMgYi9kcml2ZXJzL2ZpcmV3aXJlL29oY2kuYwppbmRleCA5ODExYzQwOTU2ZTUuLjE0MjUx
MWE1N2EwNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9maXJld2lyZS9vaGNpLmMKKysrIGIvZHJpdmVy
cy9maXJld2lyZS9vaGNpLmMKQEAgLTI2Nyw2ICsyNjcsNyBAQCBzdGF0aWMgY2hhciBvaGNpX2Ry
aXZlcl9uYW1lW10gPSBLQlVJTERfTU9ETkFNRTsKIMKgI2RlZmluZSBQQ0lfREVWSUNFX0lEX1RJ
X1RTQjEyTFYyMsKgwqDCoCAweDgwMDkKIMKgI2RlZmluZSBQQ0lfREVWSUNFX0lEX1RJX1RTQjEy
TFYyNsKgwqDCoCAweDgwMjAKIMKgI2RlZmluZSBQQ0lfREVWSUNFX0lEX1RJX1RTQjgyQUEywqDC
oMKgIDB4ODAyNQorI2RlZmluZSBQQ0lfREVWSUNFX0lEX1RJX1hJTzIyMTPCoMKgwqAgMHg4MjNm
CiDCoCNkZWZpbmUgUENJX0RFVklDRV9JRF9WSUFfVlQ2MzBYwqDCoMKgIDB4MzA0NAogwqAjZGVm
aW5lIFBDSV9SRVZfSURfVklBX1ZUNjMwNsKgwqDCoCDCoMKgwqAgMHg0NgogwqAjZGVmaW5lIFBD
SV9ERVZJQ0VfSURfVklBX1ZUNjMxNcKgwqDCoCAweDM0MDMKQEAgLTMxNiw2ICszMTcsOSBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IHsKIMKgwqDCoMKgIHtQQ0lfVkVORE9SX0lEX1RJLCBQQ0lfREVW
SUNFX0lEX1RJX1RTQjgyQUEyLCBQQ0lfQU5ZX0lELAogwqDCoMKgwqAgwqDCoMKgIFFVSVJLX1JF
U0VUX1BBQ0tFVCB8IFFVSVJLX1RJX1NMTFowNTl9LAoKK8KgwqDCoCB7UENJX1ZFTkRPUl9JRF9U
SSwgUENJX0RFVklDRV9JRF9USV9YSU8yMjEzLCBQQ0lfQU5ZX0lELAorwqDCoMKgIMKgwqDCoCBR
VUlSS19SRVNFVF9QQUNLRVQgfCBRVUlSS19USV9TTExaMDU5fSwKKwogwqDCoMKgwqAge1BDSV9W
RU5ET1JfSURfVEksIFBDSV9BTllfSUQsIFBDSV9BTllfSUQsCiDCoMKgwqDCoCDCoMKgwqAgUVVJ
UktfUkVTRVRfUEFDS0VUfSwKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwptYWlsaW5nIGxpc3QgbGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZv
cmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9saW51
eDEzOTQtZGV2ZWwK
