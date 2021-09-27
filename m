Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C10774196B0
	for <lists+linux1394-devel@lfdr.de>; Mon, 27 Sep 2021 16:48:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mUrvW-0007y0-92; Mon, 27 Sep 2021 14:48:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <arnd@kernel.org>) id 1mUrvU-0007xp-V8
 for linux1394-devel@lists.sourceforge.net; Mon, 27 Sep 2021 14:48:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fXS+z7ZRe/Eu6GkQxYvSyedKE5PuSMXWSIfqKTyIkgU=; b=dL72ULt+BFS3H5IQFGM0rnJ13g
 9rPbnLXJyeE6Xs6mFXXCg8m3m1nhclieQxEJHU9RGVsgCVjRSSaxw9LuDoC1xozUJ1IMcKThfWDs+
 bXAq39IEBDRAL5EbNrGrBZrJLsClYbRYVLQjyW2Qln6hVIRlPh1mgKNyWAv4ZV1Xwuus=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fXS+z7ZRe/Eu6GkQxYvSyedKE5PuSMXWSIfqKTyIkgU=; b=B
 tgWS97JOlEO8M8dMQLFNQ1uPSC1VZHV4yqgXHOHtk4jPDsfG3bl9rYXpFIbGap8OAMcREiqx/P/Xu
 6wSnR9f1WEBjvAbxpK8IjOnocSNgV5vvj6+Hi6LrvS367WuIuoiY6b3HtDhnppQmaktfeBvbGah2Z
 zgiaNP69MdfrMK5E=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mUrvU-007dtM-8E
 for linux1394-devel@lists.sourceforge.net; Mon, 27 Sep 2021 14:48:16 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E6231604DC;
 Mon, 27 Sep 2021 14:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632754090;
 bh=0DBzSgWK5LF6Qt4sOIW1vtQh+POtPnCJ29sz4523Ckw=;
 h=From:To:Cc:Subject:Date:From;
 b=P5ZbKNKeM87fyRR6uZqqV9jjdRPWb8eks/bGJ5SzWtQFrqn5pPDYqiPdssaxoXb54
 8bwVuO6AMWDIk1u1mdtfq/4RiNp/HLCuaYOqbxKhshyP19LCY0EAMDW2P9r7K28SAh
 9iakllMLaGfOF0UtYK7fgmK4uFxWDIjSvWYunJTshTtTjo+l0th5HYyeLYtZ2Htl5h
 b9wM+QqwdyPRBuMeX810G09xqhOe6CDehklfUaZdeVdZxYAJ9m3/gfPnpCHUdI+/L5
 oJhQ0JfoHLdzJGFubp9vSWFxoSnJaLwz0to4ghOoNKkT2vEHEM51pjv5JWoYPlBlaj
 ZeJA3iq1w0Zog==
From: Arnd Bergmann <arnd@kernel.org>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: [PATCH] [RESEND] firewire: fix function type cast warning
Date: Mon, 27 Sep 2021 16:47:55 +0200
Message-Id: <20210927144807.2759586-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Arnd Bergmann <arnd@arndb.de> gcc -Wextra complains
   about a suspicious cast: rivers/firewire/core-cdev.c:985:8: warning: cast
   between incompatible function types from ‘void (*)(struct fw_iso_context
    *, dma_addr_t, void *)’ {aka ‘void (*)(struct fw_iso_context *, long
   lon [...] 
 
 Content analysis details:   (-5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [198.145.29.99 listed in list.dnswl.org]
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
X-Headers-End: 1mUrvU-007dtM-8E
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
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

RnJvbTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KCmdjYyAtV2V4dHJhIGNvbXBsYWlu
cyBhYm91dCBhIHN1c3BpY2lvdXMgY2FzdDoKCnJpdmVycy9maXJld2lyZS9jb3JlLWNkZXYuYzo5
ODU6ODogd2FybmluZzogY2FzdCBiZXR3ZWVuIGluY29tcGF0aWJsZSBmdW5jdGlvbiB0eXBlcyBm
cm9tIOKAmHZvaWQgKCopKHN0cnVjdCBmd19pc29fY29udGV4dCAqLCBkbWFfYWRkcl90LCAgdm9p
ZCAqKeKAmSB7YWthIOKAmHZvaWQgKCopKHN0cnVjdCBmd19pc29fY29udGV4dCAqLCBsb25nIGxv
bmcgdW5zaWduZWQgaW50LCAgdm9pZCAqKeKAmX0gdG8g4oCYdm9pZCAoKikoc3RydWN0IGZ3X2lz
b19jb250ZXh0ICosIHUzMiwgIHNpemVfdCwgIHZvaWQgKiwgdm9pZCAqKeKAmSB7YWthIOKAmHZv
aWQgKCopKHN0cnVjdCBmd19pc29fY29udGV4dCAqLCB1bnNpZ25lZCBpbnQsICBsb25nIHVuc2ln
bmVkIGludCwgIHZvaWQgKiwgdm9pZCAqKeKAmX0gWy1XY2FzdC1mdW5jdGlvbi10eXBlXQoKVGhl
IGJlaGF2aW9yIGlzIGNvcnJlY3QgaW4gdGhlIGVuZCwgYnV0IHRoaXMgaXMgbW9yZSBjbGVhcmx5
CmV4cHJlc3NlZCB1c2luZyBhIHRyYW5zcGFyZW50IHVuaW9uLgoKRml4ZXM6IDg3MmUzMzBlMzg4
MCAoImZpcmV3aXJlOiBhZGQgaXNvY2hyb25vdXMgbXVsdGljaGFubmVsIHJlY2VwdGlvbiIpCkxp
bms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyMDA1MzAwOTA4MzkuNzg5NS0xLW9z
Y2FyLmNhcnRlckBnbXguY29tLwpMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAy
MTA5MjQxMDU3MzMuR0E3ODAxM0BlbWJlZGRlZG9yLwpMaW5rOiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9hbGwvMjAyMDEwMjYyMTUxMzguMzg5MzczMi0xLWFybmRAa2VybmVsLm9yZy8KU2lnbmVk
LW9mZi1ieTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KLS0tCkF0IGxlYXN0IHRocmVl
IHBlb3BsZSBoYXZlIHN1Ym1pdHRlZCBhIHZlcnNpb24gb2YgdGhpcyBwYXRjaCwgYnV0IG5vbmUK
b2YgdGhlbSBoYXMgbWFkZSBpdCBpbnRvIHRoZSBrZXJuZWwuIEkgZG9uJ3QgY2FyZSB3aGljaCB2
ZXJzaW9uIGdldHMKcGlja2VkIHVwLCBidXQgSSB0aGluayB3ZSB3YW50IGl0IHRvIGdldCBmaXhl
ZC4KLS0tCiBkcml2ZXJzL2ZpcmV3aXJlL2NvcmUtY2Rldi5jIHwgIDYgKysrLS0tCiBkcml2ZXJz
L2ZpcmV3aXJlL2NvcmUtaXNvLmMgIHwgIDIgKy0KIGluY2x1ZGUvbGludXgvZmlyZXdpcmUuaCAg
ICAgfCAxNyArKysrKysrKy0tLS0tLS0tLQogMyBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25z
KCspLCAxMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2ZpcmV3aXJlL2NvcmUt
Y2Rldi5jIGIvZHJpdmVycy9maXJld2lyZS9jb3JlLWNkZXYuYwppbmRleCBmYjZjNjUxMjE0ZjMu
LjhkODVkNTJiMDJjYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9maXJld2lyZS9jb3JlLWNkZXYuYwor
KysgYi9kcml2ZXJzL2ZpcmV3aXJlL2NvcmUtY2Rldi5jCkBAIC05NzAsNyArOTcwLDcgQEAgc3Rh
dGljIGludCBpb2N0bF9jcmVhdGVfaXNvX2NvbnRleHQoc3RydWN0IGNsaWVudCAqY2xpZW50LCB1
bmlvbiBpb2N0bF9hcmcgKmFyZykKIAkJaWYgKGEtPnNwZWVkID4gU0NPREVfMzIwMCB8fCBhLT5j
aGFubmVsID4gNjMpCiAJCQlyZXR1cm4gLUVJTlZBTDsKIAotCQljYiA9IGlzb19jYWxsYmFjazsK
KwkJY2Iuc2MgPSBpc29fY2FsbGJhY2s7CiAJCWJyZWFrOwogCiAJY2FzZSBGV19JU09fQ09OVEVY
VF9SRUNFSVZFOgpAQCAtOTc4LDExICs5NzgsMTEgQEAgc3RhdGljIGludCBpb2N0bF9jcmVhdGVf
aXNvX2NvbnRleHQoc3RydWN0IGNsaWVudCAqY2xpZW50LCB1bmlvbiBpb2N0bF9hcmcgKmFyZykK
IAkJICAgIGEtPmNoYW5uZWwgPiA2MykKIAkJCXJldHVybiAtRUlOVkFMOwogCi0JCWNiID0gaXNv
X2NhbGxiYWNrOworCQljYi5zYyA9IGlzb19jYWxsYmFjazsKIAkJYnJlYWs7CiAKIAljYXNlIEZX
X0lTT19DT05URVhUX1JFQ0VJVkVfTVVMVElDSEFOTkVMOgotCQljYiA9IChmd19pc29fY2FsbGJh
Y2tfdClpc29fbWNfY2FsbGJhY2s7CisJCWNiLm1jID0gaXNvX21jX2NhbGxiYWNrOwogCQlicmVh
azsKIAogCWRlZmF1bHQ6CmRpZmYgLS1naXQgYS9kcml2ZXJzL2ZpcmV3aXJlL2NvcmUtaXNvLmMg
Yi9kcml2ZXJzL2ZpcmV3aXJlL2NvcmUtaXNvLmMKaW5kZXggYWY3MGU3NGY5YTdlLi5kZGFkYTY0
ODc3NWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZmlyZXdpcmUvY29yZS1pc28uYworKysgYi9kcml2
ZXJzL2ZpcmV3aXJlL2NvcmUtaXNvLmMKQEAgLTE0NSw3ICsxNDUsNyBAQCBzdHJ1Y3QgZndfaXNv
X2NvbnRleHQgKmZ3X2lzb19jb250ZXh0X2NyZWF0ZShzdHJ1Y3QgZndfY2FyZCAqY2FyZCwKIAlj
dHgtPmNoYW5uZWwgPSBjaGFubmVsOwogCWN0eC0+c3BlZWQgPSBzcGVlZDsKIAljdHgtPmhlYWRl
cl9zaXplID0gaGVhZGVyX3NpemU7Ci0JY3R4LT5jYWxsYmFjay5zYyA9IGNhbGxiYWNrOworCWN0
eC0+Y2FsbGJhY2sgPSBjYWxsYmFjazsKIAljdHgtPmNhbGxiYWNrX2RhdGEgPSBjYWxsYmFja19k
YXRhOwogCiAJcmV0dXJuIGN0eDsKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZmlyZXdpcmUu
aCBiL2luY2x1ZGUvbGludXgvZmlyZXdpcmUuaAppbmRleCBhZWM4ZjMwYWIyMDAuLjU5YjVlMDJh
NmQ0MiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9maXJld2lyZS5oCisrKyBiL2luY2x1ZGUv
bGludXgvZmlyZXdpcmUuaApAQCAtNDMxLDExICs0MzEsMTMgQEAgdm9pZCBmd19pc29fYnVmZmVy
X2Rlc3Ryb3koc3RydWN0IGZ3X2lzb19idWZmZXIgKmJ1ZmZlciwgc3RydWN0IGZ3X2NhcmQgKmNh
cmQpOwogc2l6ZV90IGZ3X2lzb19idWZmZXJfbG9va3VwKHN0cnVjdCBmd19pc29fYnVmZmVyICpi
dWZmZXIsIGRtYV9hZGRyX3QgY29tcGxldGVkKTsKIAogc3RydWN0IGZ3X2lzb19jb250ZXh0Owot
dHlwZWRlZiB2b2lkICgqZndfaXNvX2NhbGxiYWNrX3QpKHN0cnVjdCBmd19pc29fY29udGV4dCAq
Y29udGV4dCwKLQkJCQkgIHUzMiBjeWNsZSwgc2l6ZV90IGhlYWRlcl9sZW5ndGgsCi0JCQkJICB2
b2lkICpoZWFkZXIsIHZvaWQgKmRhdGEpOwotdHlwZWRlZiB2b2lkICgqZndfaXNvX21jX2NhbGxi
YWNrX3QpKHN0cnVjdCBmd19pc29fY29udGV4dCAqY29udGV4dCwKLQkJCQkgICAgIGRtYV9hZGRy
X3QgY29tcGxldGVkLCB2b2lkICpkYXRhKTsKK3R5cGVkZWYgdW5pb24geworCXZvaWQgKCpzYyko
c3RydWN0IGZ3X2lzb19jb250ZXh0ICpjb250ZXh0LCB1MzIgY3ljbGUsCisJCSAgIHNpemVfdCBo
ZWFkZXJfbGVuZ3RoLCB2b2lkICpoZWFkZXIsIHZvaWQgKmRhdGEpOworCXZvaWQgKCptYykoc3Ry
dWN0IGZ3X2lzb19jb250ZXh0ICpjb250ZXh0LCBkbWFfYWRkcl90IGNvbXBsZXRlZCwKKwkJICAg
dm9pZCAqZGF0YSk7Cit9IF9fYXR0cmlidXRlX18gKChfX3RyYW5zcGFyZW50X3VuaW9uX18pKSBm
d19pc29fY2FsbGJhY2tfdDsKKwogc3RydWN0IGZ3X2lzb19jb250ZXh0IHsKIAlzdHJ1Y3QgZndf
Y2FyZCAqY2FyZDsKIAlpbnQgdHlwZTsKQEAgLTQ0MywxMCArNDQ1LDcgQEAgc3RydWN0IGZ3X2lz
b19jb250ZXh0IHsKIAlpbnQgc3BlZWQ7CiAJYm9vbCBkcm9wX292ZXJmbG93X2hlYWRlcnM7CiAJ
c2l6ZV90IGhlYWRlcl9zaXplOwotCXVuaW9uIHsKLQkJZndfaXNvX2NhbGxiYWNrX3Qgc2M7Ci0J
CWZ3X2lzb19tY19jYWxsYmFja190IG1jOwotCX0gY2FsbGJhY2s7CisJZndfaXNvX2NhbGxiYWNr
X3QgY2FsbGJhY2s7CiAJdm9pZCAqY2FsbGJhY2tfZGF0YTsKIH07CiAKLS0gCjIuMjkuMgoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwptYWlsaW5nIGxp
c3QgbGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9saW51eDEzOTQtZGV2ZWwK
