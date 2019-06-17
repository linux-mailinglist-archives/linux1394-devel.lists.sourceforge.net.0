Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4067448449
	for <lists+linux1394-devel@lfdr.de>; Mon, 17 Jun 2019 15:44:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1hcrvv-0000zw-8w; Mon, 17 Jun 2019 13:44:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mznyfn@0pointer.de>)
 id 1hcrvr-0000zg-Tb; Mon, 17 Jun 2019 13:44:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8MYzPLAfnX8igVegeAWxLyssSwAmg7k0E36ugyLR79E=; b=MrV/wJPbRtUDn/TOFslJupDSId
 fQW5r45aOZCD5ypOBO6Rze5B5nKZ68de2JWT5K/OSilcKWVPy2V1Kwzy5e0xfqE7jLKps0VWK19CT
 UiJOtC15P8n15dHni+lCT/oA6ANQ8hxqLFDLj0L4XOecn4g0Wgu3PdgL4XlrScAQY7Gg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8MYzPLAfnX8igVegeAWxLyssSwAmg7k0E36ugyLR79E=; b=emBkDW9rGhKek5etKJfsWoRpeR
 SXO4g+mRiaC3wfCsGgqhhT63R4pxM7bpocAaWrZr0BGM3A21Ar4uf2tHLdFmTcGktUQiHL326GE6H
 wmHw6RbJVMBdkgIPWqSgyfq3pTj007n57oZv/P9mjrfJJpUAesdWog/XvZ562zCwMEb0=;
Received: from gardel.0pointer.net ([85.214.157.71])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hcrvm-0017qm-AG; Mon, 17 Jun 2019 13:44:21 +0000
Received: from gardel-login.0pointer.net (gardel.0pointer.net [85.214.157.71])
 by gardel.0pointer.net (Postfix) with ESMTP id 38464E80B34;
 Mon, 17 Jun 2019 15:26:43 +0200 (CEST)
Received: by gardel-login.0pointer.net (Postfix, from userid 1000)
 id A7A17160849; Mon, 17 Jun 2019 15:26:42 +0200 (CEST)
Date: Mon, 17 Jun 2019 15:26:42 +0200
From: Lennart Poettering <mznyfn@0pointer.de>
To: systemd-devel@lists.freedesktop.org, alsa-devel@alsa-project.org,
 ffado-devel@lists.sourceforge.net,
 linux1394-devel@lists.sourceforge.net, clemens@ladisch.de
Subject: Re: [systemd-devel] udev: Access permission of fw character device
 in which fw node includes unit handled by ALSA
Message-ID: <20190617132642.GA25074@gardel-login>
Mail-Followup-To: systemd-devel@lists.freedesktop.org,
 alsa-devel@alsa-project.org, ffado-devel@lists.sourceforge.net,
 linux1394-devel@lists.sourceforge.net, clemens@ladisch.de
References: <20190520122724.GA14864@workstation>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520122724.GA14864@workstation>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [85.214.157.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1hcrvm-0017qm-AG
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

T24gTW8sIDIwLjA1LjE5IDIxOjI3LCBUYWthc2hpIFNha2Ftb3RvIChvLXRha2FzaGlAc2FrYW1v
Y2NoaS5qcCkgd3JvdGU6Cgo+IEhpIGFsbCwKPgo+IEknbSBhbiBBTFNBIGRldmVsb3BlciwgbWFp
bmx5IGNvbW1pdHRpbmcgdG8gZHJpdmVycyBmb3IgYXVkaW8gYW5kCj4gbXVzaWMgdW5pdHMgb24g
SUVFRSAxMzk0IGJ1cyAoeWVzLCBpdCdzIGxlZ2FjeSBGaXJlV2lyZSkuIEkgaGF2ZSBhCj4gY29u
Y2VybiBhYm91dCBhY2Nlc3MgcGVybWlzc2lvbiBmb3IgZncgY2hhcmFjdGVyIGRldmljZS4KCkkg
YW0gbm90IHN1cmUgSSB1bmRlcnN0YW5kIGZpcmV3aXJlIHdlbGwgZW5vdWdoIHRvIHNheSBzb21l
dGhpbmcgdG9vCnNtYXJ0LiBCdXQgaWYgSSB1bmRlcnN0YW5kIGNvcnJlY3RseSwgdGhlbiB3ZSAo
aW4gc3lzdGVtZCB1cHN0cmVhbSkKY3VycmVudGx5IG9ubHkgaGF2ZSB0aGVzZSBmb3VyIGZpcmV3
aXJlIHNwZWNpZmljIHJ1bGVzIGluIG91ciB0cmVlOgoKICBTVUJTWVNURU09PSJmaXJld2lyZSIs
IEFUVFJ7dW5pdHN9PT0iKjB4MDBhMDJkOjB4MDAwMTAqIiwgR1JPVVA9InZpZGVvIgogIFNVQlNZ
U1RFTT09ImZpcmV3aXJlIiwgQVRUUnt1bml0c309PSIqMHgwMGIwOWQ6MHgwMDAxMCoiLCBHUk9V
UD0idmlkZW8iCiAgU1VCU1lTVEVNPT0iZmlyZXdpcmUiLCBBVFRSe3VuaXRzfT09IioweDAwYTAy
ZDoweDAxMDAwMSoiLCBHUk9VUD0idmlkZW8iCiAgU1VCU1lTVEVNPT0iZmlyZXdpcmUiLCBBVFRS
e3VuaXRzfT09IioweDAwYTAyZDoweDAxNDAwMSoiLCBHUk9VUD0idmlkZW8iCgpBbmQgYWxsIG9m
IHRoZXNlIGFyZSBoYW5kbGVkIGJ5IHNvbWUgZmlyZXdpcmUgY29yZSBkcml2ZXI/IFRoZSBkZXZp
Y2VzCnlvdSBjYXJlIGFib3V0LCBob3cgd291bGQgdGhlIHJ1bGVzIGxvb2sgbGlrZSBmb3IgdGhp
cz8KCkluIGdlbmVyYWwsIHdoZW4gaXQgY29tZXMgdG8gYXV0by1sb2FkaW5nIG9mIGRyaXZlcnMg
d2UgdXN1YWxseSBleHBlY3QKdGhlIGtlcm5lbCB0byBhZGQgbW9kYWxpYXMgbWV0YWRhdGEgdG8g
LmtvIGZpbGVzLgoKSW4gdGhlIGh3ZGIgdXN1YWxseSBtb3N0bHkgb25seSAiYXV4aWxpYXJ5IiBk
YXRhIGlzIHN0b3JlZCwgaS5lLiBzdHVmZgp0aGF0IGlzIGdyZWF0IHRvIGhhdmUgYnV0IGlzIG5v
dCBlc3NlbnRpYWwgZm9yIGEgZGV2aWNlIHRvIHdvcmsKYmFzaWNhbGx5LgoKUnVsZXMgZmlsZXMg
c2hvdWxkIGdlbmVyYWxseSBiZSBrZXB0IHNob3J0LiBpLmUuIGlmIHlvdSBhZGQgMyBtb3JlCnJ1
bGVzIGZvciB0aGUgZGV2aWNlcyB5b3UgY2FyZSBhYm91dCwgdGhhdCdkIGJlIGZpbmUg4oCUIGlm
IHlvdSBhZGQgMTAwLAp0aGVuIHRoYXQncyBub3Qgc28gZ3JlYXQgaG93ZXZlciwgYW5kIGFub3Ro
ZXIgYXBwcm9hY2ggc2hvdWxkIGJlCmZvdW5kLgoKQW55d2F5LCBnaXZlbiB0aGF0IEkgYW0gbm90
IGEgZmlyZXdpcmUgcHJvLCBJIGZpZ3VyZSB5b3UgaGF2ZSB0bwpkZWNpZGUgeW91cnNlbGYgd2hh
dCB0aGUgYmVzdCBhcHByb2FjaCBpcywgYW5kIHRoZW4gcHJlcCBhIFBSIGFuZCB3ZQpjYW4gaGF2
ZSBhIGxvb2suIFdpdGhvdXQgbG9va2luZyBhdCBhbiAobWF5YmUganVzdCBSRkMpIHBhdGNoIEkg
YW0gbm90CnN1cmUgSSBncm9rIGVudWdoIHRvIHByb3Blcmx5IGNvbW1lbnQgb24gaXQuCgpMZW5u
YXJ0CgotLQpMZW5uYXJ0IFBvZXR0ZXJpbmcsIEJlcmxpbgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCm1haWxpbmcgbGlzdCBsaW51eDEzOTQtZGV2ZWxA
bGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL2xpbnV4MTM5NC1kZXZlbAo=
