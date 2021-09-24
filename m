Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6951641734C
	for <lists+linux1394-devel@lfdr.de>; Fri, 24 Sep 2021 14:54:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mTkiz-0007uZ-4H; Fri, 24 Sep 2021 12:54:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1mTkix-0007uE-1Z
 for linux1394-devel@lists.sourceforge.net; Fri, 24 Sep 2021 12:54:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:References:In-Reply-To:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4gPE6yuV641TUFz9oaQeWtbPkGh3Bp4kiLo+CYHmDH8=; b=JYjDxFF5i3I7ucnLen1BsES7Op
 Vg04groSnO+1HBbeGRMtePmqUpfk9ypk/9C7fxSnqHJGbZq30qOuEVFJmsd1ZpyvfG3EnL06OVHjq
 hU0GIpkmoXchXxjzxus+IXZTRYBHzARamaUl/6P5bEYBm9LHCVsebGnmEAZgtDwKukOg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:References
 :In-Reply-To:Subject:CC:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4gPE6yuV641TUFz9oaQeWtbPkGh3Bp4kiLo+CYHmDH8=; b=ip/fLsRDcNpe5jJHER7KqE5eI8
 wpFRBdjExxVA04I5E1RAQmXQbFYYOJprEojoEIcD43h8vUIoCLWU8kjwDxh7kLfL5rHhykpNzo+SE
 tEXDh+8DWPxfDWJdiKxnGfhV8bk2gno793YM7OkViIOe3wDSXJOsrKv1/e7BuaHzfU24=;
Received: from mail-pj1-f41.google.com ([209.85.216.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mTkiw-003str-CW
 for linux1394-devel@lists.sourceforge.net; Fri, 24 Sep 2021 12:54:42 +0000
Received: by mail-pj1-f41.google.com with SMTP id k23so6952201pji.0
 for <linux1394-devel@lists.sourceforge.net>;
 Fri, 24 Sep 2021 05:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:user-agent:in-reply-to:references
 :message-id:mime-version:content-transfer-encoding;
 bh=4gPE6yuV641TUFz9oaQeWtbPkGh3Bp4kiLo+CYHmDH8=;
 b=aO9Gxmb7Mp9ZTlHNhiTP8lCJ1qQRBgBdGlbYFNXFAR0vRLS7xdtBHaYvqzzbQpmxAh
 1nVKsqVonV0qbiLyKcu862uUQ81C8F33QqanrMbuYR3Z2FzNTfymO1vGzYTme3MFPXQo
 5L2gbhIjG4fNzu2GgWy2vEHPjw8oB5ixzIqWY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:user-agent:in-reply-to
 :references:message-id:mime-version:content-transfer-encoding;
 bh=4gPE6yuV641TUFz9oaQeWtbPkGh3Bp4kiLo+CYHmDH8=;
 b=gU13eUVyL3lJkqs2rL1jJL67fzzrCaofRs/gQbfvsS3ZEyFJ/9pG2reNs+Q3adyFL/
 4G1HzZ7z9VWA5IW6PtqTHj/HHt67ud3HAN4c+g+A90xEr7cXFGRJHa/scPXQxV3LzwSf
 foGxUfm2V41dVk4bSnoUSiAichTbe+JJezYIPphjc81WFjdfQq8dIYeh03RGqXG6RFE6
 qZ97R6NpGWkPGknTp6sZbhS5OFedT6N9nDoJsftUoZCB/oYrIFgcbT3Ji1wVwPqsLepQ
 LdQQ99h4C7znQdT/1vS18eVqW6VN8NhN0KvvJONbGH2OJpf1coS5Ba2nmIF4vWAov2A0
 fHaQ==
X-Gm-Message-State: AOAM532idZodfNrYadlwM5qs0DO3rYr88MPkE13+iUtt49SjPH9DPv1D
 Zepn50a7lRG1ZmJMD+u2n6cK+/s/L9s2Jg==
X-Google-Smtp-Source: ABdhPJxOhFXFGobTo1ScxpufyAH6iXMr4p/Di77RU3XXpVK9CjV3r1AJwPJfzlNsdz5QNOug2QnK9A==
X-Received: by 2002:a62:7696:0:b0:44b:4b19:6417 with SMTP id
 r144-20020a627696000000b0044b4b196417mr5628235pfc.5.1632487672401; 
 Fri, 24 Sep 2021 05:47:52 -0700 (PDT)
Received: from [127.0.0.1] (173-164-112-133-Oregon.hfc.comcastbusiness.net.
 [173.164.112.133])
 by smtp.gmail.com with ESMTPSA id x15sm9914465pgt.34.2021.09.24.05.47.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Sep 2021 05:47:51 -0700 (PDT)
Date: Fri, 24 Sep 2021 05:47:47 -0700
From: Kees Cook <keescook@chromium.org>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: Re: [PATCH][next] firewire: cdev: Fix function cast error
User-Agent: K-9 Mail for Android
In-Reply-To: <20210924105733.GA78013@embeddedor>
References: <20210924105733.GA78013@embeddedor>
Message-ID: <5BB921B7-9D3C-460F-98D1-F277D31DC849@chromium.org>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On September 24, 2021 3:57:33 AM PDT, "Gustavo A. R. Silva"
 <gustavoars@kernel.org> wrote: >Fix the following function cast error when
 building with >-Wcast-function-type: > >drivers/firewire/core-cde [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chromium.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.41 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.41 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mTkiw-003str-CW
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

CgpPbiBTZXB0ZW1iZXIgMjQsIDIwMjEgMzo1NzozMyBBTSBQRFQsICJHdXN0YXZvIEEuIFIuIFNp
bHZhIiA8Z3VzdGF2b2Fyc0BrZXJuZWwub3JnPiB3cm90ZToKPkZpeCB0aGUgZm9sbG93aW5nIGZ1
bmN0aW9uIGNhc3QgZXJyb3Igd2hlbiBidWlsZGluZyB3aXRoCj4tV2Nhc3QtZnVuY3Rpb24tdHlw
ZToKPgo+ZHJpdmVycy9maXJld2lyZS9jb3JlLWNkZXYuYzogSW4gZnVuY3Rpb24g4oCYaW9jdGxf
Y3JlYXRlX2lzb19jb250ZXh04oCZOgo+ZHJpdmVycy9maXJld2lyZS9jb3JlLWNkZXYuYzo5ODU6
ODogZXJyb3I6IGNhc3QgYmV0d2VlbiBpbmNvbXBhdGlibGUgZnVuY3Rpb24gdHlwZXMgZnJvbSDi
gJh2b2lkICgqKShzdHJ1Y3QgZndfaXNvX2NvbnRleHQgKiwgZG1hX2FkZHJfdCwgIHZvaWQgKini
gJkge2FrYSDigJh2b2lkICgqKShzdHJ1Y3QgZndfaXNvX2NvbnRleHQgKiwgbG9uZyBsb25nIHVu
c2lnbmVkIGludCwgIHZvaWQgKinigJl9IHRvIOKAmHZvaWQgKCopKHN0cnVjdCBmd19pc29fY29u
dGV4dCAqLCB1MzIsICBzaXplX3QsICB2b2lkICosIHZvaWQgKinigJkge2FrYSDigJh2b2lkICgq
KShzdHJ1Y3QgZndfaXNvX2NvbnRleHQgKiwgdW5zaWduZWQgaW50LCAgbG9uZyB1bnNpZ25lZCBp
bnQsICB2b2lkICosIHZvaWQgKinigJl9IFstV2Vycm9yPWNhc3QtZnVuY3Rpb24tdHlwZV0KPiAg
OTg1IHwgICBjYiA9IChmd19pc29fY2FsbGJhY2tfdClpc29fbWNfY2FsbGJhY2s7Cj4gICAgICB8
ICAgICAgICBeCj5jYzE6IGFsbCB3YXJuaW5ncyBiZWluZyB0cmVhdGVkIGFzIGVycm9ycwo+Cj5U
aGlzIGhlbHBzIHdpdGggdGhlIG9uZ29pbmcgZWZmb3J0cyB0byBnbG9iYWxseSBlbmFibGUgLVdj
YXN0LWZ1bmN0aW9uLXR5cGUsCj5zbyB3aGVuIENvbnRyb2wgRmxvdyBJbnRlZ3JpdHkgY2hlY2tp
bmcgbGFuZHMgaW4gdGhlIGtlcm5lbCwgaW5jb21wYXRpYmxlCj5mdW5jdGlvbiB0eXBlIGNhc3Rp
bmcgZG9lc24ndCBpbnRlcmZlcmUgd2l0aCBpdC4KPgo+TGluazogaHR0cHM6Ly9naXRodWIuY29t
L0tTUFAvbGludXgvaXNzdWVzLzIwCj5MaW5rOiBodHRwczovL2dpdGh1Yi5jb20vS1NQUC9saW51
eC9pc3N1ZXMvMTAyCj5TaWduZWQtb2ZmLWJ5OiBHdXN0YXZvIEEuIFIuIFNpbHZhIDxndXN0YXZv
YXJzQGtlcm5lbC5vcmc+CgpJIHRob3VnaHQgdGhpcyBsb29rZWQgZmFtaWxpYXIuLi4KCmh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyMDA1MzAwOTA4MzkuNzg5NS0xLW9zY2FyLmNhcnRl
ckBnbXguY29tLwoKSSB0aGluayBzb21lb25lIGp1c3QgbmVlZHMgdG8gcGljayB0aGlzIHVwIHNp
bmNlIGl0IGdvdCBwYXN0IHJldmlldywgZXRjLgoKLUtlZXMKCgo+LS0tCj4gZHJpdmVycy9maXJl
d2lyZS9jb3JlLWNkZXYuYyB8IDEzICsrKysrKysrLS0tLS0KPiAxIGZpbGUgY2hhbmdlZCwgOCBp
bnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+Cj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9maXJl
d2lyZS9jb3JlLWNkZXYuYyBiL2RyaXZlcnMvZmlyZXdpcmUvY29yZS1jZGV2LmMKPmluZGV4IGZi
NmM2NTEyMTRmMy4uZmQyOTIzNTk5NjY3IDEwMDY0NAo+LS0tIGEvZHJpdmVycy9maXJld2lyZS9j
b3JlLWNkZXYuYwo+KysrIGIvZHJpdmVycy9maXJld2lyZS9jb3JlLWNkZXYuYwo+QEAgLTk1Nyw3
ICs5NTcsMTAgQEAgc3RhdGljIGludCBpb2N0bF9jcmVhdGVfaXNvX2NvbnRleHQoc3RydWN0IGNs
aWVudCAqY2xpZW50LCB1bmlvbiBpb2N0bF9hcmcgKmFyZykKPiB7Cj4gCXN0cnVjdCBmd19jZGV2
X2NyZWF0ZV9pc29fY29udGV4dCAqYSA9ICZhcmctPmNyZWF0ZV9pc29fY29udGV4dDsKPiAJc3Ry
dWN0IGZ3X2lzb19jb250ZXh0ICpjb250ZXh0Owo+LQlmd19pc29fY2FsbGJhY2tfdCBjYjsKPisJ
dW5pb24gY2FsbGJhY2sgewo+KwkJZndfaXNvX2NhbGxiYWNrX3Qgc2M7Cj4rCQlmd19pc29fbWNf
Y2FsbGJhY2tfdCBtYzsKPisJfSBjYjsKPiAJaW50IHJldDsKPiAKPiAJQlVJTERfQlVHX09OKEZX
X0NERVZfSVNPX0NPTlRFWFRfVFJBTlNNSVQgIT0gRldfSVNPX0NPTlRFWFRfVFJBTlNNSVQgfHwK
PkBAIC05NzAsNyArOTczLDcgQEAgc3RhdGljIGludCBpb2N0bF9jcmVhdGVfaXNvX2NvbnRleHQo
c3RydWN0IGNsaWVudCAqY2xpZW50LCB1bmlvbiBpb2N0bF9hcmcgKmFyZykKPiAJCWlmIChhLT5z
cGVlZCA+IFNDT0RFXzMyMDAgfHwgYS0+Y2hhbm5lbCA+IDYzKQo+IAkJCXJldHVybiAtRUlOVkFM
Owo+IAo+LQkJY2IgPSBpc29fY2FsbGJhY2s7Cj4rCQljYi5zYyA9IGlzb19jYWxsYmFjazsKPiAJ
CWJyZWFrOwo+IAo+IAljYXNlIEZXX0lTT19DT05URVhUX1JFQ0VJVkU6Cj5AQCAtOTc4LDExICs5
ODEsMTEgQEAgc3RhdGljIGludCBpb2N0bF9jcmVhdGVfaXNvX2NvbnRleHQoc3RydWN0IGNsaWVu
dCAqY2xpZW50LCB1bmlvbiBpb2N0bF9hcmcgKmFyZykKPiAJCSAgICBhLT5jaGFubmVsID4gNjMp
Cj4gCQkJcmV0dXJuIC1FSU5WQUw7Cj4gCj4tCQljYiA9IGlzb19jYWxsYmFjazsKPisJCWNiLnNj
ID0gaXNvX2NhbGxiYWNrOwo+IAkJYnJlYWs7Cj4gCj4gCWNhc2UgRldfSVNPX0NPTlRFWFRfUkVD
RUlWRV9NVUxUSUNIQU5ORUw6Cj4tCQljYiA9IChmd19pc29fY2FsbGJhY2tfdClpc29fbWNfY2Fs
bGJhY2s7Cj4rCQljYi5tYyA9IGlzb19tY19jYWxsYmFjazsKPiAJCWJyZWFrOwo+IAo+IAlkZWZh
dWx0Ogo+QEAgLTk5MCw3ICs5OTMsNyBAQCBzdGF0aWMgaW50IGlvY3RsX2NyZWF0ZV9pc29fY29u
dGV4dChzdHJ1Y3QgY2xpZW50ICpjbGllbnQsIHVuaW9uIGlvY3RsX2FyZyAqYXJnKQo+IAl9Cj4g
Cj4gCWNvbnRleHQgPSBmd19pc29fY29udGV4dF9jcmVhdGUoY2xpZW50LT5kZXZpY2UtPmNhcmQs
IGEtPnR5cGUsCj4tCQkJYS0+Y2hhbm5lbCwgYS0+c3BlZWQsIGEtPmhlYWRlcl9zaXplLCBjYiwg
Y2xpZW50KTsKPisJCQlhLT5jaGFubmVsLCBhLT5zcGVlZCwgYS0+aGVhZGVyX3NpemUsIGNiLnNj
LCBjbGllbnQpOwo+IAlpZiAoSVNfRVJSKGNvbnRleHQpKQo+IAkJcmV0dXJuIFBUUl9FUlIoY29u
dGV4dCk7Cj4gCWlmIChjbGllbnQtPnZlcnNpb24gPCBGV19DREVWX1ZFUlNJT05fQVVUT19GTFVT
SF9JU09fT1ZFUkZMT1cpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbWFpbGluZyBsaXN0IGxpbnV4MTM5NC1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgxMzk0
LWRldmVsCg==
