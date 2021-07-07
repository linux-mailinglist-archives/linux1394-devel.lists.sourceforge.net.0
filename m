Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 076813BE2DA
	for <lists+linux1394-devel@lfdr.de>; Wed,  7 Jul 2021 07:57:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1m10Yu-0006JU-Ay; Wed, 07 Jul 2021 05:57:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <stefanr@s5r6.in-berlin.de>) id 1m10Ys-0006JL-BF
 for linux1394-devel@lists.sourceforge.net; Wed, 07 Jul 2021 05:57:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+0DUzorQyN1Rbt86A0kss5hp6ZF/uPvlXQ1P7iSxfVs=; b=OOinUWXepokPiOzgsiqy2fUoWu
 nQ3z9uaaApueDB508B3xCl7kuYqZobqwkGqy6/vPU7PVAo+aQMp0cEygbO7nOQ+3MFzNBl+WGoiFM
 bWdVgR4exai+ZQAvcIlrQ3/VX65A0aDmNV600o8I0DpkJMghIXZKcdG/s7s28NtQgLDY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+0DUzorQyN1Rbt86A0kss5hp6ZF/uPvlXQ1P7iSxfVs=; b=GurZGiZbv4kDwKDth/tY9jAUV6
 +zY92WHxao58bNXVfG4NMy39FQdYmB7Fp2BVmEPinRiWPVrcasktTM9DBQ4aP4Tls/LORR70neQD8
 XhVgEZocIsD9vPS3StoCoqjVBoEo9ITJRbQ70IfDsyVH02RaEHHl9i6cXzpFnpzzKlyg=;
Received: from einhorn.in-berlin.de ([192.109.42.8]
 helo=einhorn-mail-out.in-berlin.de)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m10Yh-00DWhr-8v
 for linux1394-devel@lists.sourceforge.net; Wed, 07 Jul 2021 05:57:30 +0000
X-Envelope-From: stefanr@s5r6.in-berlin.de
Received: from authenticated.user (localhost [127.0.0.1]) by
 einhorn.in-berlin.de with ESMTPSA id 1675v4nD012588
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Wed, 7 Jul 2021 07:57:04 +0200
Date: Wed, 7 Jul 2021 07:57:03 +0200
From: Stefan Richter <stefanr@s5r6.in-berlin.de>
To: Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v2 4/4] bus: Make remove callback return void
Message-ID: <20210707075703.32908b84@kant>
In-Reply-To: <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
References: <20210706154803.1631813-1-u.kleine-koenig@pengutronix.de>
 <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.109.42.8 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1m10Yh-00DWhr-8v
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

T24gSnVsIDA2IFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+IFRoZSBkcml2ZXIgY29yZSBpZ25v
cmVzIHRoZSByZXR1cm4gdmFsdWUgb2YgdGhpcyBjYWxsYmFjayBiZWNhdXNlIHRoZXJlCj4gaXMg
b25seSBsaXR0bGUgaXQgY2FuIGRvIHdoZW4gYSBkZXZpY2UgZGlzYXBwZWFycy4KPiAKPiBUaGlz
IGlzIHRoZSBmaW5hbCBiaXQgb2YgYSBsb25nIGxhc3RpbmcgY2xlYW51cCBxdWVzdCB3aGVyZSBz
ZXZlcmFsCj4gYnVzZXMgd2VyZSBjb252ZXJ0ZWQgdG8gYWxzbyByZXR1cm4gdm9pZCBmcm9tIHRo
ZWlyIHJlbW92ZSBjYWxsYmFjay4KPiBBZGRpdGlvbmFsbHkgc29tZSByZXNvdXJjZSBsZWFrcyB3
ZXJlIGZpeGVkIHRoYXQgd2VyZSBjYXVzZWQgYnkgZHJpdmVycwo+IHJldHVybmluZyBhbiBlcnJv
ciBjb2RlIGluIHRoZSBleHBlY3RhdGlvbiB0aGF0IHRoZSBkcml2ZXIgd29uJ3QgZ28KPiBhd2F5
Lgo+IAo+IFdpdGggc3RydWN0IGJ1c190eXBlOjpyZW1vdmUgcmV0dXJuaW5nIHZvaWQgaXQncyBw
cmV2ZW50ZWQgdGhhdCBuZXdseQo+IGltcGxlbWVudGVkIGJ1c2VzIHJldHVybiBhbiBpZ25vcmVk
IGVycm9yIGNvZGUgYW5kIHNvIGRvbid0IGFudGljaXBhdGUKPiB3cm9uZyBleHBlY3RhdGlvbnMg
Zm9yIGRyaXZlciBhdXRob3JzLgoKQWNrZWQtYnk6IFN0ZWZhbiBSaWNodGVyIDxzdGVmYW5yQHM1
cjYuaW4tYmVybGluLmRlPiAoZm9yIGRyaXZlcnMvZmlyZXdpcmUpCgpbLi4uXQo+ICBkcml2ZXJz
L2ZpcmV3aXJlL2NvcmUtZGV2aWNlLmMgICAgICAgICAgICB8IDQgKy0tLQpbLi4uXQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2ZpcmV3aXJlL2NvcmUtZGV2aWNlLmMgYi9kcml2ZXJzL2ZpcmV3aXJl
L2NvcmUtZGV2aWNlLmMKPiBpbmRleCA2ODIxNjk4ODM5MWYuLjkwZWQ4ZmRhYmE3NSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2ZpcmV3aXJlL2NvcmUtZGV2aWNlLmMKPiArKysgYi9kcml2ZXJzL2Zp
cmV3aXJlL2NvcmUtZGV2aWNlLmMKPiBAQCAtMTg3LDE0ICsxODcsMTIgQEAgc3RhdGljIGludCBm
d191bml0X3Byb2JlKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgCXJldHVybiBkcml2ZXItPnByb2Jl
KGZ3X3VuaXQoZGV2KSwgdW5pdF9tYXRjaChkZXYsIGRldi0+ZHJpdmVyKSk7Cj4gIH0KPiAgCj4g
LXN0YXRpYyBpbnQgZndfdW5pdF9yZW1vdmUoc3RydWN0IGRldmljZSAqZGV2KQo+ICtzdGF0aWMg
dm9pZCBmd191bml0X3JlbW92ZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gIHsKPiAgCXN0cnVjdCBm
d19kcml2ZXIgKmRyaXZlciA9Cj4gIAkJCWNvbnRhaW5lcl9vZihkZXYtPmRyaXZlciwgc3RydWN0
IGZ3X2RyaXZlciwgZHJpdmVyKTsKPiAgCj4gIAlkcml2ZXItPnJlbW92ZShmd191bml0KGRldikp
Owo+IC0KPiAtCXJldHVybiAwOwo+ICB9Cj4gIAo+ICBzdGF0aWMgaW50IGdldF9tb2RhbGlhcyhz
dHJ1Y3QgZndfdW5pdCAqdW5pdCwgY2hhciAqYnVmZmVyLCBzaXplX3QgYnVmZmVyX3NpemUpClsu
Li5dCi0tIApTdGVmYW4gUmljaHRlcgotPT09PT09LS09LT0gLT09PSAtLT09PQpodHRwOi8vYXJj
Z3JhcGguZGUvc3IvCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbWFpbGluZyBsaXN0IGxpbnV4MTM5NC1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgxMzk0LWRl
dmVsCg==
