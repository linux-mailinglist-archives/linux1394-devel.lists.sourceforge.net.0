Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C80C310A34
	for <lists+linux1394-devel@lfdr.de>; Fri,  5 Feb 2021 12:27:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1l7zGY-0004SD-M2; Fri, 05 Feb 2021 11:27:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bigeasy@linutronix.de>) id 1l7zGW-0004S3-GT
 for linux1394-devel@lists.sourceforge.net; Fri, 05 Feb 2021 11:27:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9ueGmdvz3ioHRE0UmAFIZj/SnSpCrX/9dlN34TMpvV0=; b=Dpq9sCjs88hEC00y9SJKww1rso
 0lW/PdXb/vS3Z6GaLFCYgeG15aWIhcG2iT0X1EMI5q57+Vs76BZXGDb1x07Td4aJr678jymJlYzEz
 i0F42kWsxA8fEuoIdQzDYz1dgLAzaO3h703V95G6frvpMLd78oAEvdWKbhBcpfIyLDag=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9ueGmdvz3ioHRE0UmAFIZj/SnSpCrX/9dlN34TMpvV0=; b=f7ZP40JSqd2snPSYzxo7V8CEVK
 zT/KatSjKux+YYtfDDd+Cee28UVKaeukZWWdnKlZqcFWEY14SVsFmI/I+fhMVTPmB2BFsjYgPjv/Z
 TwLSAoiJ9nnnznl4WqoMiThCPejquGxP+qKSvVqeyKhzChBxOj/uANyjaUTb0YqGft8U=;
Received: from galois.linutronix.de ([193.142.43.55])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l7zGI-0087eq-GR
 for linux1394-devel@lists.sourceforge.net; Fri, 05 Feb 2021 11:27:08 +0000
Date: Fri, 5 Feb 2021 12:26:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1612524400;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9ueGmdvz3ioHRE0UmAFIZj/SnSpCrX/9dlN34TMpvV0=;
 b=ngHlRBQsZ7W7twI/SyGq2iRmAJ99VR5ounbqPAIO1UssSrWzWr+wMcl1s0rFIgewWpk/Jb
 kaC1OZXC2rl+CcFHl00pZ8BbKEzSNljec04pnjY7nWbnW6Z1+H9qoWiOTSI0B2qRfsEVDq
 nNquLEtW64YrkJsfuO6CLNdP2rqxjqMRt2LSqURfUxp1MqUDelaRXfnJc2j2IQtvekjPQD
 wdA5HxBTj990uYGL7ty6edjH+CcjRBYXoW31dKuqGKvWtetAIAazDc/1y6UkJhn/5ooiP8
 tX/2CTk8UBQRW00CcX04F7qqWP7GrEvh+ApsDwgVqTu50GxYkyemtV1sfhKIbA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1612524400;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9ueGmdvz3ioHRE0UmAFIZj/SnSpCrX/9dlN34TMpvV0=;
 b=nb7z/uyYMgpoffX7RWQ6m8JAjR4w4RzvI9D0VOqXy4s+mIrrMVCiPJtb7NcJCGixKp7s9N
 J6bYyBi3tRRlntCg==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: David Runge <dave@sleepmap.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <20210205112638.xuduvuefy3auycht@linutronix.de>
References: <YBVG/PG7syFIUBno@hmbx>
 <20210201083441.ocucdvdrv37goz2s@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210201083441.ocucdvdrv37goz2s@linutronix.de>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: pkgbuild.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l7zGI-0087eq-GR
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
Cc: linux1394-devel@lists.sourceforge.net, linux-rt-users@vger.kernel.org,
 "Ahmed S. Darwish" <a.darwish@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

T24gMjAyMS0wMi0wMSAwOTozNDo0MSBbKzAxMDBdLCBUbyBEYXZpZCBSdW5nZSB3cm90ZToKPiAr
IGZpcmV3aXJlIG1haW50YWluZXIKPiAKPiBPbiAyMDIxLTAxLTMwIDEyOjQ2OjA0IFsrMDEwMF0s
IERhdmlkIFJ1bmdlIHdyb3RlOgo+ID4gT24gMjAyMS0wMS0yOSAxODowNDoxNCAoKzAxMDApLCBT
ZWJhc3RpYW4gQW5kcnplaiBTaWV3aW9yIHdyb3RlOgo+ID4gPiBJIGRvbid0IHNlZSBhbnl0aGlu
ZyB3cm9uZy4gVGhlcmUgaXMgc21hbGwgZGlmZmVyZW5jZSBpbiB0aW1pbmcgYW5kCj4gPiA+IHRo
ZW4gdGhlIFJUIHZlcnNpb24gZG9lcyBub3QgZG8gYSB0aGluZyB3aGlsZSAhUlQga2VlcHMgcmVz
ZXRpbmfigKYKPiA+ID4gQ291bGQgeW91IHRyeSBub24tUlQgd2l0aCB0aGUKPiA+ID4gCXRocmVh
ZGlycXMKPiA+ID4gCj4gPiA+IG9wdGlvbj8KPiA+IAo+ID4gWWVzLCAoc29ycnkgZm9yIG5vdCBp
bmNsdWRpbmcgdGhhdCBlYXJsaWVyIEQ6KSB0aGF0IGZhaWxzIHRoZSBzYW1lIHdheQo+ID4gYXMg
dGhlIHJlYWx0aW1lIGtlcm5lbDoKPiA+IGh0dHBzOi8vcGtnYnVpbGQuY29tL35kdnpydi9idWdz
LzIwMjEvMDEvbGludXgtNS40LjkxLWtlcm5lbF90aHJlYWRpcnFzLmxvZwo+IAo+IENvdWxkIGJl
IHNwZWNpZmljIHRvIHRoZSBjaGlwIG9yIHRoZSBvaGNpIGRyaXZlci4gRWl0aGVyIHdheSwgdGhl
IHByb2JsZW0KPiBhcmUgdGhlIHRocmVhZGVkIGludGVycnVwdHMuCgpEYXZpZCwgY291bGQgeW91
IHBsZWFzZSB0cnkgYSB2NS4xMCBrZXJuZWwgd2l0aCB0aHJlYWRpcnFzPyBJJ3ZlIGJlZW4KanVz
dCB0b2xkIHRoYXQgaXQgd29ya3MgdGhlcmUgb24gYSBwcGM2NCBib3guCgo+ID4gQmVzdCwKPiA+
IAo+ID4gRGF2aWQKClNlYmFzdGlhbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm1haWxpbmcgbGlzdCBsaW51eDEzOTQtZGV2ZWxAbGlzdHMuc291cmNl
Zm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2xp
bnV4MTM5NC1kZXZlbAo=
