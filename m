Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F14783BC35F
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Jul 2021 22:28:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1m0VCB-0008Q1-BY; Mon, 05 Jul 2021 20:27:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <stefanr@s5r6.in-berlin.de>) id 1m0VC9-0008Pq-97
 for linux1394-devel@lists.sourceforge.net; Mon, 05 Jul 2021 20:27:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iZKPPNpCJ3CcRXYFndrIgz8xAdTLv7yDWy1o7w0vIhA=; b=ZYYYuLYcJlYppoiFUjRhz3ZecP
 i0mpAbZh2HGCBYTMSVdcl6DpjA/57gwWUp4iXV1Ns8BOFpLmd5dcXiq6JczOlx4F8ldnts4ZcqgqP
 zj+22xcp5FhbfWneWKDk3+GFx3Avms0LCssbpMiMqnHtcuImwJTYhQS960lGMyRgC3Rw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iZKPPNpCJ3CcRXYFndrIgz8xAdTLv7yDWy1o7w0vIhA=; b=QcE4DdkVn0zw1h2YV/psinzUjB
 ExeLanOm373xRYySeDx1OlDOLqo1KLV417TNnzRwHjdPR1qVo8lzfku2aKJqOVd7AnVJOxk8QeRn/
 okmOdFKju2B9kTGA/bEGs2HfPKXI6PeKOsQVSnImXO6chFJM52p1wJC7Bbz/pXIxz5Fk=;
Received: from einhorn.in-berlin.de ([192.109.42.8]
 helo=einhorn-mail-out.in-berlin.de)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m0VC4-00BPr0-R6
 for linux1394-devel@lists.sourceforge.net; Mon, 05 Jul 2021 20:27:57 +0000
X-Envelope-From: stefanr@s5r6.in-berlin.de
Received: from authenticated.user (localhost [127.0.0.1]) by
 einhorn.in-berlin.de with ESMTPSA id 165KRb9O022276
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Mon, 5 Jul 2021 22:27:38 +0200
Date: Mon, 5 Jul 2021 22:27:37 +0200
From: Stefan Richter <stefanr@s5r6.in-berlin.de>
To: Pu Lehui <pulehui@huawei.com>
Subject: Re: [PATCH -next] firewire: net: remove unused variable 'guid'
Message-ID: <20210705222737.6a2f9949@kant>
In-Reply-To: <20210514064438.66456-1-pulehui@huawei.com>
References: <20210514064438.66456-1-pulehui@huawei.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.109.42.8 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1m0VC4-00BPr0-R6
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
Cc: linux-kernel@vger.kernel.or, linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

T24gTWF5IDE0IFB1IExlaHVpIHdyb3RlOgo+IEdDQyByZXBvcnRzIHRoZSBmb2xsb3dpbmcgd2Fy
bmluZyB3aXRoIFc9MToKPiAKPiBkcml2ZXJzL2ZpcmV3aXJlL25ldC5jOjQ5Mzo5OiB3YXJuaW5n
Ogo+ICB2YXJpYWJsZSDigJhndWlk4oCZIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1z
ZXQtdmFyaWFibGVdCj4gICA0OTMgfCAgX19iZTY0IGd1aWQ7Cj4gICAgICAgfCAgICAgICAgIF5+
fn4KPiAKPiBUaGlzIHZhcmlhYmxlIGlzIG5vdCB1c2VkIGluIGZ1bmN0aW9uICwgdGhpcyBjb21t
aXQKPiByZW1vdmUgaXQgdG8gZml4IHRoZSB3YXJuaW5nLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFB1
IExlaHVpIDxwdWxlaHVpQGh1YXdlaS5jb20+CgpUaGFua3MuICBJIGFscmVhZHkgaGFkIGEgc2lt
aWxhciBwYXRjaCBmcm9tIHNvbWVib2R5IGVsc2UsIGJ1dCBub3RpY2VkIG5vdwp0aGF0IHlvdXJz
IGlzIG1vcmUgY29tcGxldGUuICBJIGNvbW1pdHRlZCB5b3VyIHBhdGNoIG5vdyBpbnN0ZWFkIG9m
IHRoZQpvbGRlciBvbmUuCgo+IC0tLQo+ICBkcml2ZXJzL2ZpcmV3aXJlL25ldC5jIHwgNCAtLS0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2ZpcmV3aXJlL25ldC5jIGIvZHJpdmVycy9maXJld2lyZS9uZXQuYwo+IGluZGV4IDcxNWU0
OTFkZmJjMy4uNGMzZmQyZWVkMWRhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZmlyZXdpcmUvbmV0
LmMKPiArKysgYi9kcml2ZXJzL2ZpcmV3aXJlL25ldC5jCj4gQEAgLTQ4OCw5ICs0ODgsNyBAQCBz
dGF0aWMgaW50IGZ3bmV0X2ZpbmlzaF9pbmNvbWluZ19wYWNrZXQoc3RydWN0IG5ldF9kZXZpY2Ug
Km5ldCwKPiAgCQkJCQlzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCB1MTYgc291cmNlX25vZGVfaWQsCj4g
IAkJCQkJYm9vbCBpc19icm9hZGNhc3QsIHUxNiBldGhlcl90eXBlKQo+ICB7Cj4gLQlzdHJ1Y3Qg
ZnduZXRfZGV2aWNlICpkZXY7Cj4gIAlpbnQgc3RhdHVzOwo+IC0JX19iZTY0IGd1aWQ7Cj4gIAo+
ICAJc3dpdGNoIChldGhlcl90eXBlKSB7Cj4gIAljYXNlIEVUSF9QX0FSUDoKPiBAQCAtNTAzLDcg
KzUwMSw2IEBAIHN0YXRpYyBpbnQgZnduZXRfZmluaXNoX2luY29taW5nX3BhY2tldChzdHJ1Y3Qg
bmV0X2RldmljZSAqbmV0LAo+ICAJCWdvdG8gZXJyOwo+ICAJfQo+ICAKPiAtCWRldiA9IG5ldGRl
dl9wcml2KG5ldCk7Cj4gIAkvKiBXcml0ZSBtZXRhZGF0YSwgYW5kIHRoZW4gcGFzcyB0byB0aGUg
cmVjZWl2ZSBsZXZlbCAqLwo+ICAJc2tiLT5kZXYgPSBuZXQ7Cj4gIAlza2ItPmlwX3N1bW1lZCA9
IENIRUNLU1VNX05PTkU7Cj4gQEAgLTUxMiw3ICs1MDksNiBAQCBzdGF0aWMgaW50IGZ3bmV0X2Zp
bmlzaF9pbmNvbWluZ19wYWNrZXQoc3RydWN0IG5ldF9kZXZpY2UgKm5ldCwKPiAgCSAqIFBhcnNl
IHRoZSBlbmNhcHN1bGF0aW9uIGhlYWRlci4gVGhpcyBhY3R1YWxseSBkb2VzIHRoZSBqb2Igb2YK
PiAgCSAqIGNvbnZlcnRpbmcgdG8gYW4gZXRoZXJuZXQtbGlrZSBwc2V1ZG8gZnJhbWUgaGVhZGVy
Lgo+ICAJICovCj4gLQlndWlkID0gY3B1X3RvX2JlNjQoZGV2LT5jYXJkLT5ndWlkKTsKPiAgCWlm
IChkZXZfaGFyZF9oZWFkZXIoc2tiLCBuZXQsIGV0aGVyX3R5cGUsCj4gIAkJCSAgIGlzX2Jyb2Fk
Y2FzdCA/IG5ldC0+YnJvYWRjYXN0IDogbmV0LT5kZXZfYWRkciwKPiAgCQkJICAgTlVMTCwgc2ti
LT5sZW4pID49IDApIHsKCgoKLS0gClN0ZWZhbiBSaWNodGVyCi09PT09PT0tLT0tPSAtPT09IC0t
PS09Cmh0dHA6Ly9hcmNncmFwaC5kZS9zci8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwptYWlsaW5nIGxpc3QgbGludXgxMzk0LWRldmVsQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by9saW51eDEzOTQtZGV2ZWwK
