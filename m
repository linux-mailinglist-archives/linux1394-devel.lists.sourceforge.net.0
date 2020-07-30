Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A276D2332B6
	for <lists+linux1394-devel@lfdr.de>; Thu, 30 Jul 2020 15:10:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1k18Jt-0000Yy-NP; Thu, 30 Jul 2020 13:10:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gustavo@embeddedor.com>) id 1k18Js-0000Yc-SJ
 for linux1394-devel@lists.sourceforge.net; Thu, 30 Jul 2020 13:10:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:Subject:From:References:Cc:To:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z5uXuRI+aXgtQ1zcBbtoxXuoEsy13FiXL+bA4Jtl5F0=; b=IzerxFVdCs/uM9VptN4vPNr2YM
 Kh81SdHSs+mlGH7Kmuk/GcHDJj3LWGntFGtgN2+47o0rjZH5V//d2JHfDAZa/sutoweq4GYvKL8ta
 QyNszBFIs3RZ+Jo+KMHc1KOWAtFtiKEbWfdq7tj4LStoj82dedBUMUz/UTagbFiw0mI8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:Subject:From:References:Cc:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Z5uXuRI+aXgtQ1zcBbtoxXuoEsy13FiXL+bA4Jtl5F0=; b=OhWtz+lnHFa65h0s/AwWWwpHxB
 IzZnkhcbw1cvS2/Vvhzvyslxm68jVlVOip+8kED6SHqD3k0nOboF8HJwmD91Wml3VxjjwJxsxn6eb
 eeujuuhoQs6hXbWv0Y2UrvUZ0pMYZnaxmOFKeLvnesmGsNlrD9H/BezmpWAQaBUl97OE=;
Received: from gateway21.websitewelcome.com ([192.185.45.31])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k18Jp-007GRz-C4
 for linux1394-devel@lists.sourceforge.net; Thu, 30 Jul 2020 13:10:00 +0000
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
 by gateway21.websitewelcome.com (Postfix) with ESMTP id 99F2E400C7751
 for <linux1394-devel@lists.sourceforge.net>;
 Thu, 30 Jul 2020 07:46:06 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 17wikwfC54KQc17wik2295; Thu, 30 Jul 2020 07:46:05 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:Subject:From:References:Cc:To:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z5uXuRI+aXgtQ1zcBbtoxXuoEsy13FiXL+bA4Jtl5F0=; b=f4yrzksuUtPBASWfmvqtozvNdn
 dRW2EJksROcq9wnNrRcbM8R4CAVlzb9w7qIz7fGhSD7+DjDGsv8sQQmaY+qucBGyPsPD0gqE0gO39
 CoxKszK6UhgiQE9oySp1G7h+aFoVJ+O0ud8BpIJYmyEwXZj+TGWR1iIBZ9Sj7Bt1W6BiJ66EFzefV
 BbxbBWYTwIgDarNw2M0iXKAl5iQ3TnJuuiSZLAIVoMgm/0uIo/Gmlt+Q2KNhYSTlMDShrY1V+gKC7
 Mn0YBvTnYPUkRmABWZfggfSYutSXTRUMiUAfAheTWv6iXUCYXdT+hRqPgcPqGfk3h6Bo6dBoS56am
 qC+bSFpQ==;
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:33390
 helo=[192.168.15.3])
 by gator4166.hostgator.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <gustavo@embeddedor.com>)
 id 1k17wf-00394J-On; Thu, 30 Jul 2020 07:46:01 -0500
To: Qianli Zhao <zhaoqianligood@gmail.com>, stefanr@s5r6.in-berlin.de,
 linux1394-devel@lists.sourceforge.net
References: <1596079620-20023-1-git-send-email-zhaoqianligood@gmail.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 AP7RWS474w==
Subject: Re: [PATCH] firewire: firewire-cdev.h: Avoid the use of one-element
 array
Message-ID: <d7d33292-99a3-cddf-629b-a71acd1a7bee@embeddedor.com>
Date: Thu, 30 Jul 2020 07:52:03 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1596079620-20023-1-git-send-email-zhaoqianligood@gmail.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.31.110
X-Source-L: No
X-Exim-ID: 1k17wf-00394J-On
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.3])
 [187.162.31.110]:33390
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 3
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Spam-Score: -1.2 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [192.185.45.31 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: kernelnewbies.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.8 NICE_REPLY_A           Looks like a legit reply (A)
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k18Jp-007GRz-C4
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
Cc: linux-kernel@vger.kernel.org, zhaoqianli@xiaomi.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Ck5BQ0shCgpQbGVhc2UsIHN0b3AgZG9pbmcgdGhpcy4gWW91IGNsZWFybHkgZG9uJ3Qga25vdyB3
aGF0IHlvdSdyZSBkb2luZy4KWW91J3JlIGp1c3QgYmxpbmRseSBjb3B5aW5nL3Bhc3RpbmcgYWxs
IHRoaXMuIFRoZSBzdWJqZWN0IGxpbmUKaGFzIG5vdGhpbmcgdG8gZG8gd2l0aCB3aGF0IHRoZSBw
YXRjaCBkb2VzIGFuZCB3ZSBkb24ndCB3YW50CmFueSBvZiB0aGVzZSB0cmFuc2Zvcm1hdGlvbnMg
aW4gVUFQSSBmb3Igbm93LgoKQXMgSSBhbHJlYWR5IHNhaWQgaGVyZToKaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbGttbC85MGIyYzlmMy1jYzJiLWIyZTYtNTFlZi05OThkMmY3OTEyM2FAZW1iZWRk
ZWRvci5jb20vCgpzdGFydCB3aXRoIGRyaXZlcnMvc3RhZ2luZy8gYW5kIGdldCBoYW5nIG9mIHRo
ZSBrZXJuZWwgZGV2ZWxvcG1lbnQKcHJvY2VzcywgZmlyc3QuIFRoaXMgaXMgYSBncmVhdCBzb3Vy
Y2UsIEkgZW5jb3VyYWdlIHlvdSB0byByZWFkIGl0CnRob3JvdWdobHk6Cmh0dHBzOi8va2VybmVs
bmV3Ymllcy5vcmcvT3V0cmVhY2h5Zmlyc3RwYXRjaAoKSWYgeW91IHdhbnQgdG8gbGFuZCB5b3Vy
IGZpcnN0IGtlcm5lbCBwYXRjaCwgYmxpbmRseSBjb3B5aW5nL3Bhc3RpbmcKc3R1ZmYgd2l0aG91
dCBhY3R1YWxseSBwYXlpbmcgYXR0ZW50aW9uIHRvIHdoYXQgeW91J3JlIGRvaW5nLCBpcwpjZXJ0
YWlubHkgbm90IHRoZSBiZXN0IHN0cmF0ZWd5IGFuZCB5b3Ugd29uJ3Qgc3RhcnQgd2l0aCB0aGUg
cmlnaHQKZm9vdCBpbiB0ZXJtcyBvZiB5b3VyIHJlcHV0YXRpb24uIFN0b3AgdGhpcyBhbmQgZG8g
dGhpbmdzIHJpZ2h0IGZyb20KdGhlIGJlZ2lubmluZy4KCi0tCkd1c3Rhdm8KCk9uIDcvMjkvMjAg
MjI6MjcsIFFpYW5saSBaaGFvIHdyb3RlOgo+IEZyb206IFFpYW5saSBaaGFvIDx6aGFvcWlhbmxp
QHhpYW9taS5jb20+Cj4gCj4gVGhlcmUgaXMgYSByZWd1bGFyIG5lZWQgaW4gdGhlIGtlcm5lbCB0
byBwcm92aWRlIGEgd2F5IHRvIGRlY2xhcmUgaGF2aW5nIGEKPiBkeW5hbWljYWxseSBzaXplZCBz
ZXQgb2YgdHJhaWxpbmcgZWxlbWVudHMgaW4gYSBzdHJ1Y3R1cmUuIEtlcm5lbCBjb2RlIHNob3Vs
ZAo+IGFsd2F5cyB1c2Ug4oCcZmxleGlibGUgYXJyYXkgbWVtYmVyc+KAnVsxXSBmb3IgdGhlc2Ug
Y2FzZXMuIFRoZSBvbGRlciBzdHlsZSBvZgo+IG9uZS1lbGVtZW50IG9yIHplcm8tbGVuZ3RoIGFy
cmF5cyBzaG91bGQgbm8gbG9uZ2VyIGJlIHVzZWRbMl0uCj4gCj4gWzFdIGh0dHBzOi8vZW4ud2lr
aXBlZGlhLm9yZy93aWtpL0ZsZXhpYmxlX2FycmF5X21lbWJlcgo+IFsyXSBodHRwczovL2dpdGh1
Yi5jb20vS1NQUC9saW51eC9pc3N1ZXMvMjEKPiAKPiBTaWduZWQtb2ZmLWJ5OiBRaWFubGkgWmhh
byA8emhhb3FpYW5saUB4aWFvbWkuY29tPgo+IC0tLQo+ICBpbmNsdWRlL3VhcGkvbGludXgvZmly
ZXdpcmUtY2Rldi5oIHwgMTAgKysrKystLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvbGlu
dXgvZmlyZXdpcmUtY2Rldi5oIGIvaW5jbHVkZS91YXBpL2xpbnV4L2ZpcmV3aXJlLWNkZXYuaAo+
IGluZGV4IDdlNWI1YzEuLjQ4N2RlODdmIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvdWFwaS9saW51
eC9maXJld2lyZS1jZGV2LmgKPiArKysgYi9pbmNsdWRlL3VhcGkvbGludXgvZmlyZXdpcmUtY2Rl
di5oCj4gQEAgLTExOCw3ICsxMTgsNyBAQCBzdHJ1Y3QgZndfY2Rldl9ldmVudF9yZXNwb25zZSB7
Cj4gIAlfX3UzMiB0eXBlOwo+ICAJX191MzIgcmNvZGU7Cj4gIAlfX3UzMiBsZW5ndGg7Cj4gLQlf
X3UzMiBkYXRhWzBdOwo+ICsJX191MzIgZGF0YVtdOwo+ICB9Owo+ICAKPiAgLyoqCj4gQEAgLTE0
Miw3ICsxNDIsNyBAQCBzdHJ1Y3QgZndfY2Rldl9ldmVudF9yZXF1ZXN0IHsKPiAgCV9fdTY0IG9m
ZnNldDsKPiAgCV9fdTMyIGhhbmRsZTsKPiAgCV9fdTMyIGxlbmd0aDsKPiAtCV9fdTMyIGRhdGFb
MF07Cj4gKwlfX3UzMiBkYXRhW107Cj4gIH07Cj4gIAo+ICAvKioKPiBAQCAtMjA1LDcgKzIwNSw3
IEBAIHN0cnVjdCBmd19jZGV2X2V2ZW50X3JlcXVlc3QyIHsKPiAgCV9fdTMyIGdlbmVyYXRpb247
Cj4gIAlfX3UzMiBoYW5kbGU7Cj4gIAlfX3UzMiBsZW5ndGg7Cj4gLQlfX3UzMiBkYXRhWzBdOwo+
ICsJX191MzIgZGF0YVtdOwo+ICB9Owo+ICAKPiAgLyoqCj4gQEAgLTM0NCw3ICszNDQsNyBAQCBz
dHJ1Y3QgZndfY2Rldl9ldmVudF9pc29fcmVzb3VyY2Ugewo+ICAgKiBAZGF0YToJSW5jb21pbmcg
ZGF0YQo+ICAgKgo+ICAgKiBJZiBAdHlwZSBpcyAlRldfQ0RFVl9FVkVOVF9QSFlfUEFDS0VUX1NF
TlQsIEBsZW5ndGggaXMgMCBhbmQgQGRhdGEgZW1wdHksCj4gLSAqIGV4Y2VwdCBpbiBjYXNlIG9m
IGEgcGluZyBwYWNrZXQ6ICBUaGVuLCBAbGVuZ3RoIGlzIDQsIGFuZCBAZGF0YVswXSBpcyB0aGUK
PiArICogZXhjZXB0IGluIGNhc2Ugb2YgYSBwaW5nIHBhY2tldDogIFRoZW4sIEBsZW5ndGggaXMg
NCwgYW5kIEBkYXRhW10gaXMgdGhlCj4gICAqIHBpbmcgdGltZSBpbiA0OS4xNTJNSHogY2xvY2tz
IGlmIEByY29kZSBpcyAlUkNPREVfQ09NUExFVEUuCj4gICAqCj4gICAqIElmIEB0eXBlIGlzICVG
V19DREVWX0VWRU5UX1BIWV9QQUNLRVRfUkVDRUlWRUQsIEBsZW5ndGggaXMgOCBhbmQgQGRhdGEK
PiBAQCAtMzU1LDcgKzM1NSw3IEBAIHN0cnVjdCBmd19jZGV2X2V2ZW50X3BoeV9wYWNrZXQgewo+
ICAJX191MzIgdHlwZTsKPiAgCV9fdTMyIHJjb2RlOwo+ICAJX191MzIgbGVuZ3RoOwo+IC0JX191
MzIgZGF0YVswXTsKPiArCV9fdTMyIGRhdGFbXTsKPiAgfTsKPiAgCj4gIC8qKgo+IAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm1haWxpbmcgbGlzdCBs
aW51eDEzOTQtZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4MTM5NC1kZXZlbAo=
