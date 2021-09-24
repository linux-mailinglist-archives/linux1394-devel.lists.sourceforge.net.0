Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A543417079
	for <lists+linux1394-devel@lfdr.de>; Fri, 24 Sep 2021 12:54:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mTiq7-0001fg-Fj; Fri, 24 Sep 2021 10:53:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <gustavoars@kernel.org>) id 1mTiq6-0001fZ-GE
 for linux1394-devel@lists.sourceforge.net; Fri, 24 Sep 2021 10:53:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zOchJov+uC2R26cunEpxhz3/9ObocqK8cocNZlueyRo=; b=eIqiFhHwUsFtqNp+QO5j5Gxoov
 Zt5f/jqAO53ALht1n6PILQUhB31akyMadSIj8Q2q6UQdT7EuFZaWHhcG5l8a19+6mlm/JO/PnWB6h
 SGXvPnxYqtcntGk2VnTQiOOy7HwHlSjLJmZwgm5FeMqTquIz2nnsOSfSfNI5oDtR8FRs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:Cc
 :To:From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=zOchJov+uC2R26cunEpxhz3/9ObocqK8cocNZlueyRo=; b=C
 OdevKXsUIcaWPZGX+t3Fd1cn2/XgBS6n2HclTzf7GcWUqZHcSKAwTcMVZegIXnJaoBIPu3XgAAtk/
 VMEqVQpiKhEq8WsQdGtRB9ehqbD0G7K8ondW0yI/wtnyGl0P3jy1dJlD8rS0AeC6Y8rZkh4jbXEVn
 yf/qkyR174BsLw6E=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mTiq2-003n5k-HQ
 for linux1394-devel@lists.sourceforge.net; Fri, 24 Sep 2021 10:53:58 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6D53B61107;
 Fri, 24 Sep 2021 10:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632480821;
 bh=X3iFV4UPkFtW/wAMFdMZ6F4j16STunkrtRPHPmEE4hw=;
 h=Date:From:To:Cc:Subject:From;
 b=DEF/0Z0fl+rhizpmcrV8fQndAuSJVFtWcDBbyz3agsDkUVTpX5mrVOvgIiKtk81QQ
 5/yz5R8BRCnEqio5PxV537tlhy0QQnbqptdIIfsRia03uPC6xidB0QNBdzdsKHyEwJ
 ZmQFreX+O3Rg29MKwimIHG7VssqMuc0Aceh7OZ6eFHhGQ5utEagBwSXDTbff3oG3xW
 lbJNj/dQEOwARNAQu6yvU6tsOBcSuDw5qld+dZJYHvP4mbgz/IhQYoTQH/aq2Aa1G1
 mouf30CAefETXVu7SypcQ/v3Uj1cqBNXO72HQaj/fg/PHlRbSexOS6HukeT10Yr16u
 cEvSYJ6SdY45g==
Date: Fri, 24 Sep 2021 05:57:33 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: [PATCH][next] firewire: cdev: Fix function cast error
Message-ID: <20210924105733.GA78013@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Fix the following function cast error when building with -Wcast-function-type:
    drivers/firewire/core-cdev.c: In function ‘ioctl_create_iso_context’:
    drivers/firewire/core-cdev.c:985:8: error: cast between incompatible function
    types from ‘void (*)(struct fw_iso_context *, [...] 
 
 Content analysis details:   (-5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [198.145.29.99 listed in list.dnswl.org]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: cb.mc]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mTiq2-003n5k-HQ
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
Cc: linux1394-devel@lists.sourceforge.net, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Rml4IHRoZSBmb2xsb3dpbmcgZnVuY3Rpb24gY2FzdCBlcnJvciB3aGVuIGJ1aWxkaW5nIHdpdGgK
LVdjYXN0LWZ1bmN0aW9uLXR5cGU6Cgpkcml2ZXJzL2ZpcmV3aXJlL2NvcmUtY2Rldi5jOiBJbiBm
dW5jdGlvbiDigJhpb2N0bF9jcmVhdGVfaXNvX2NvbnRleHTigJk6CmRyaXZlcnMvZmlyZXdpcmUv
Y29yZS1jZGV2LmM6OTg1Ojg6IGVycm9yOiBjYXN0IGJldHdlZW4gaW5jb21wYXRpYmxlIGZ1bmN0
aW9uIHR5cGVzIGZyb20g4oCYdm9pZCAoKikoc3RydWN0IGZ3X2lzb19jb250ZXh0ICosIGRtYV9h
ZGRyX3QsICB2b2lkICop4oCZIHtha2Eg4oCYdm9pZCAoKikoc3RydWN0IGZ3X2lzb19jb250ZXh0
ICosIGxvbmcgbG9uZyB1bnNpZ25lZCBpbnQsICB2b2lkICop4oCZfSB0byDigJh2b2lkICgqKShz
dHJ1Y3QgZndfaXNvX2NvbnRleHQgKiwgdTMyLCAgc2l6ZV90LCAgdm9pZCAqLCB2b2lkICop4oCZ
IHtha2Eg4oCYdm9pZCAoKikoc3RydWN0IGZ3X2lzb19jb250ZXh0ICosIHVuc2lnbmVkIGludCwg
IGxvbmcgdW5zaWduZWQgaW50LCAgdm9pZCAqLCB2b2lkICop4oCZfSBbLVdlcnJvcj1jYXN0LWZ1
bmN0aW9uLXR5cGVdCiAgOTg1IHwgICBjYiA9IChmd19pc29fY2FsbGJhY2tfdClpc29fbWNfY2Fs
bGJhY2s7CiAgICAgIHwgICAgICAgIF4KY2MxOiBhbGwgd2FybmluZ3MgYmVpbmcgdHJlYXRlZCBh
cyBlcnJvcnMKClRoaXMgaGVscHMgd2l0aCB0aGUgb25nb2luZyBlZmZvcnRzIHRvIGdsb2JhbGx5
IGVuYWJsZSAtV2Nhc3QtZnVuY3Rpb24tdHlwZSwKc28gd2hlbiBDb250cm9sIEZsb3cgSW50ZWdy
aXR5IGNoZWNraW5nIGxhbmRzIGluIHRoZSBrZXJuZWwsIGluY29tcGF0aWJsZQpmdW5jdGlvbiB0
eXBlIGNhc3RpbmcgZG9lc24ndCBpbnRlcmZlcmUgd2l0aCBpdC4KCkxpbms6IGh0dHBzOi8vZ2l0
aHViLmNvbS9LU1BQL2xpbnV4L2lzc3Vlcy8yMApMaW5rOiBodHRwczovL2dpdGh1Yi5jb20vS1NQ
UC9saW51eC9pc3N1ZXMvMTAyClNpZ25lZC1vZmYtYnk6IEd1c3Rhdm8gQS4gUi4gU2lsdmEgPGd1
c3Rhdm9hcnNAa2VybmVsLm9yZz4KLS0tCiBkcml2ZXJzL2ZpcmV3aXJlL2NvcmUtY2Rldi5jIHwg
MTMgKysrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNSBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2ZpcmV3aXJlL2NvcmUtY2Rldi5jIGIvZHJp
dmVycy9maXJld2lyZS9jb3JlLWNkZXYuYwppbmRleCBmYjZjNjUxMjE0ZjMuLmZkMjkyMzU5OTY2
NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9maXJld2lyZS9jb3JlLWNkZXYuYworKysgYi9kcml2ZXJz
L2ZpcmV3aXJlL2NvcmUtY2Rldi5jCkBAIC05NTcsNyArOTU3LDEwIEBAIHN0YXRpYyBpbnQgaW9j
dGxfY3JlYXRlX2lzb19jb250ZXh0KHN0cnVjdCBjbGllbnQgKmNsaWVudCwgdW5pb24gaW9jdGxf
YXJnICphcmcpCiB7CiAJc3RydWN0IGZ3X2NkZXZfY3JlYXRlX2lzb19jb250ZXh0ICphID0gJmFy
Zy0+Y3JlYXRlX2lzb19jb250ZXh0OwogCXN0cnVjdCBmd19pc29fY29udGV4dCAqY29udGV4dDsK
LQlmd19pc29fY2FsbGJhY2tfdCBjYjsKKwl1bmlvbiBjYWxsYmFjayB7CisJCWZ3X2lzb19jYWxs
YmFja190IHNjOworCQlmd19pc29fbWNfY2FsbGJhY2tfdCBtYzsKKwl9IGNiOwogCWludCByZXQ7
CiAKIAlCVUlMRF9CVUdfT04oRldfQ0RFVl9JU09fQ09OVEVYVF9UUkFOU01JVCAhPSBGV19JU09f
Q09OVEVYVF9UUkFOU01JVCB8fApAQCAtOTcwLDcgKzk3Myw3IEBAIHN0YXRpYyBpbnQgaW9jdGxf
Y3JlYXRlX2lzb19jb250ZXh0KHN0cnVjdCBjbGllbnQgKmNsaWVudCwgdW5pb24gaW9jdGxfYXJn
ICphcmcpCiAJCWlmIChhLT5zcGVlZCA+IFNDT0RFXzMyMDAgfHwgYS0+Y2hhbm5lbCA+IDYzKQog
CQkJcmV0dXJuIC1FSU5WQUw7CiAKLQkJY2IgPSBpc29fY2FsbGJhY2s7CisJCWNiLnNjID0gaXNv
X2NhbGxiYWNrOwogCQlicmVhazsKIAogCWNhc2UgRldfSVNPX0NPTlRFWFRfUkVDRUlWRToKQEAg
LTk3OCwxMSArOTgxLDExIEBAIHN0YXRpYyBpbnQgaW9jdGxfY3JlYXRlX2lzb19jb250ZXh0KHN0
cnVjdCBjbGllbnQgKmNsaWVudCwgdW5pb24gaW9jdGxfYXJnICphcmcpCiAJCSAgICBhLT5jaGFu
bmVsID4gNjMpCiAJCQlyZXR1cm4gLUVJTlZBTDsKIAotCQljYiA9IGlzb19jYWxsYmFjazsKKwkJ
Y2Iuc2MgPSBpc29fY2FsbGJhY2s7CiAJCWJyZWFrOwogCiAJY2FzZSBGV19JU09fQ09OVEVYVF9S
RUNFSVZFX01VTFRJQ0hBTk5FTDoKLQkJY2IgPSAoZndfaXNvX2NhbGxiYWNrX3QpaXNvX21jX2Nh
bGxiYWNrOworCQljYi5tYyA9IGlzb19tY19jYWxsYmFjazsKIAkJYnJlYWs7CiAKIAlkZWZhdWx0
OgpAQCAtOTkwLDcgKzk5Myw3IEBAIHN0YXRpYyBpbnQgaW9jdGxfY3JlYXRlX2lzb19jb250ZXh0
KHN0cnVjdCBjbGllbnQgKmNsaWVudCwgdW5pb24gaW9jdGxfYXJnICphcmcpCiAJfQogCiAJY29u
dGV4dCA9IGZ3X2lzb19jb250ZXh0X2NyZWF0ZShjbGllbnQtPmRldmljZS0+Y2FyZCwgYS0+dHlw
ZSwKLQkJCWEtPmNoYW5uZWwsIGEtPnNwZWVkLCBhLT5oZWFkZXJfc2l6ZSwgY2IsIGNsaWVudCk7
CisJCQlhLT5jaGFubmVsLCBhLT5zcGVlZCwgYS0+aGVhZGVyX3NpemUsIGNiLnNjLCBjbGllbnQp
OwogCWlmIChJU19FUlIoY29udGV4dCkpCiAJCXJldHVybiBQVFJfRVJSKGNvbnRleHQpOwogCWlm
IChjbGllbnQtPnZlcnNpb24gPCBGV19DREVWX1ZFUlNJT05fQVVUT19GTFVTSF9JU09fT1ZFUkZM
T1cpCi0tIAoyLjI3LjAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbWFpbGluZyBsaXN0IGxpbnV4MTM5NC1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgxMzk0
LWRldmVsCg==
