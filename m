Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4026430A45F
	for <lists+linux1394-devel@lfdr.de>; Mon,  1 Feb 2021 10:31:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1l6VXq-0002pX-0r; Mon, 01 Feb 2021 09:30:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bigeasy@linutronix.de>) id 1l6VXo-0002pO-EH
 for linux1394-devel@lists.sourceforge.net; Mon, 01 Feb 2021 09:30:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aaJFegpsFq5Ifsc5Ox2rbD2EGiC1q66G9Lz8akhD8ns=; b=GjD6Mdp7iv4UheGyjhPcm1ei6b
 riWjuV895Fh+dAa900dmLPJcJIKS3Kwex4c+qkEpNWWD4xpL7jteV8UdumnGzPqd0mSR1+KNNGy5q
 yKal1mBxkuaXvBQTzTQE9mVm71EArKjQyWRcFJ5r0fqNTGxpAnoFHqOPhumINoqwcfnc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aaJFegpsFq5Ifsc5Ox2rbD2EGiC1q66G9Lz8akhD8ns=; b=JOUi5jwocVaPkzNU53+rnTYn39
 oe3IBvK+SnvJhsXXw5tUWh3Gx79oCv3JNYajEDbORWCvgRYbCLH1s08oBk/i0J8wTyFYEyiVO6wX5
 O4WoYg5zJpzvzJAQ4uwXZNesYzOfCxwNm/yR5RaZYpsH6ru/sMnj6hxBJLf/ojVM+xRo=;
Received: from galois.linutronix.de ([193.142.43.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l6VXe-0003L2-9n
 for linux1394-devel@lists.sourceforge.net; Mon, 01 Feb 2021 09:30:52 +0000
Date: Mon, 1 Feb 2021 09:34:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1612168483;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  in-reply-to:in-reply-to; 
 bh=aaJFegpsFq5Ifsc5Ox2rbD2EGiC1q66G9Lz8akhD8ns=;
 b=Ss6QxNgvhf29a5NlX4+6KGlZaJL/pl4egdJLNxHBYAt0O5LsgyKI+q/jbJSt+sjzrHDmho
 AKkOTNCI5wwliQ8ZS1PoknX9ZcsI5/14bc20gTD/e07TtEpXHa2H7NRGj5CV0q9X7cy8w7
 iYEn4mp4CIrW6th5QZIqlslGKStx7rRW4sJtoDIPs2TIhKRoJj5txclaVN/M76Lt/TeMxK
 tBtW3uS2gk9j9IR8PvKAdPMJJUL5LOK39q7RmtkMcBQV5haPtG2HEG1JJGbizyX/1wkuXs
 sk65JWLcWVwizVH0AYMysomaKo49zKW9JFm820l1SA5Kkqhfame9KxXw33sFYw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1612168483;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  in-reply-to:in-reply-to; 
 bh=aaJFegpsFq5Ifsc5Ox2rbD2EGiC1q66G9Lz8akhD8ns=;
 b=Tdn+lzXx3YWyLhCP+aPjQJW+VWX+YS+wdVEllOEX7/Ju7ZSvrLrHNzi0YYOVxMmvmZFSJz
 Uaf+1h1pGKqffNBQ==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: David Runge <dave@sleepmap.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <20210201083441.ocucdvdrv37goz2s@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YBVG/PG7syFIUBno@hmbx>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l6VXe-0003L2-9n
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

KyBmaXJld2lyZSBtYWludGFpbmVyCgpPbiAyMDIxLTAxLTMwIDEyOjQ2OjA0IFsrMDEwMF0sIERh
dmlkIFJ1bmdlIHdyb3RlOgo+IE9uIDIwMjEtMDEtMjkgMTg6MDQ6MTQgKCswMTAwKSwgU2ViYXN0
aWFuIEFuZHJ6ZWogU2lld2lvciB3cm90ZToKPiA+IEkgZG9uJ3Qgc2VlIGFueXRoaW5nIHdyb25n
LiBUaGVyZSBpcyBzbWFsbCBkaWZmZXJlbmNlIGluIHRpbWluZyBhbmQKPiA+IHRoZW4gdGhlIFJU
IHZlcnNpb24gZG9lcyBub3QgZG8gYSB0aGluZyB3aGlsZSAhUlQga2VlcHMgcmVzZXRpbmfigKYK
PiA+IENvdWxkIHlvdSB0cnkgbm9uLVJUIHdpdGggdGhlCj4gPiAJdGhyZWFkaXJxcwo+ID4gCj4g
PiBvcHRpb24/Cj4gCj4gWWVzLCAoc29ycnkgZm9yIG5vdCBpbmNsdWRpbmcgdGhhdCBlYXJsaWVy
IEQ6KSB0aGF0IGZhaWxzIHRoZSBzYW1lIHdheQo+IGFzIHRoZSByZWFsdGltZSBrZXJuZWw6Cj4g
aHR0cHM6Ly9wa2didWlsZC5jb20vfmR2enJ2L2J1Z3MvMjAyMS8wMS9saW51eC01LjQuOTEta2Vy
bmVsX3RocmVhZGlycXMubG9nCgpDb3VsZCBiZSBzcGVjaWZpYyB0byB0aGUgY2hpcCBvciB0aGUg
b2hjaSBkcml2ZXIuIEVpdGhlciB3YXksIHRoZSBwcm9ibGVtCmFyZSB0aGUgdGhyZWFkZWQgaW50
ZXJydXB0cy4KCj4gQmVzdCwKPiAKPiBEYXZpZAoKU2ViYXN0aWFuCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbWFpbGluZyBsaXN0IGxpbnV4MTM5NC1k
ZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQv
bGlzdHMvbGlzdGluZm8vbGludXgxMzk0LWRldmVsCg==
