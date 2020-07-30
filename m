Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E81D232A5E
	for <lists+linux1394-devel@lfdr.de>; Thu, 30 Jul 2020 05:27:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1k0zE5-0000e9-VJ; Thu, 30 Jul 2020 03:27:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <zhaoqianligood@gmail.com>) id 1k0zE4-0000dy-9W
 for linux1394-devel@lists.sourceforge.net; Thu, 30 Jul 2020 03:27:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SAwanaBh/g8SjyCF66Oh7kkXlY0ljlytzRLB3xpaxAQ=; b=i9QNjmEvGqONMqyWVCBuvzchKZ
 KPL9vS5ZBTSb+ZsXGaWV8UtYXs928FL7FkZDALZ29HBNKzhPu/7zs9ZvKfNjqJ5TsgzoIu41UTh6x
 0FNVIjrY9jUnG87GBZNS74ZzjZL0UmhgMx4nCwecQ6DBXuETTrBzuW88Zc49Rl5555G0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SAwanaBh/g8SjyCF66Oh7kkXlY0ljlytzRLB3xpaxAQ=; b=g
 3NW/okgc6L44QcqfC8PL4tRZRcnMOaguvVR4fRob5W61yWk4hRcRh7pPJWOTx42FDSzQ1kKL5XWIX
 Z/1O8bgR83s5tI8H46z38d15LUt3AOEiRS4a+Eplh+JxzBse00CcPLHfNN6FNN8St1ddXeZ9XlWmZ
 Tmb+lfStWUU4pRMc=;
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k0zE2-003tQM-TJ
 for linux1394-devel@lists.sourceforge.net; Thu, 30 Jul 2020 03:27:24 +0000
Received: by mail-pf1-f194.google.com with SMTP id s26so14236772pfm.4
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 29 Jul 2020 20:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SAwanaBh/g8SjyCF66Oh7kkXlY0ljlytzRLB3xpaxAQ=;
 b=WwfCkHiHKhrFKEuK3iBT93GceFrVkzz0g3zn8mRx7dg/jkd8ItPxPY+x6ZGivO2yET
 U5Q1Oxp+9yGd8lkJZS61YBYYvWA3ueWHTnBoof7UK9Pso5dXfa9ScakApH7yCFU4Eu+1
 ldGSMXpl7SQS+59I5zCGXX6jHiMLifa1m2P4XzItzuwKOsf7GsqVq5d3f3hg3P6oe1Wr
 eYsu5ZYg2FTGMGMZ5146JiyKqE7cFCmsVw7igih8XAPMejx9U9rJW82V5brLrcSGiQT8
 N4m4AfFpf+OrT3J0XBN+WaasogDFLGaoHDe14aO72Q6tn0gIXYV3El6jP9O3u4Pw/bq1
 VJAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SAwanaBh/g8SjyCF66Oh7kkXlY0ljlytzRLB3xpaxAQ=;
 b=SrF6mxLj+TnMxilMgc7lntKfF1r2EO6nIG0YMJSz2sol7+q50pRkNj1uur9hp0pglp
 1DG5SIpIB34aoSrUSYJGeCZLFVt8NahSB9iMKGc7h2syLYBIBG0s0s7XhsBRo9p3uhRr
 oDkiaE7q/Unzf+Kfe3x36dQl6IO1vdpB+9mzXktjJwuPS2uTS/b7Cxx9OzQdeuW0eD3w
 DJhB7bURCT6qVLmL/wV+RDVgbQRudRJ6bDYHW8qSSscNfdMdzvao+/QkMteit3NztBNW
 fC83U61ZyV/Reyqc5LiQrh2DPFrravNbArJy/XnHAeRRit80glPCRjUFnyQkPzFQymOu
 UuUQ==
X-Gm-Message-State: AOAM531wo7X6vhNi8Rbx9JAv0DSSwWaRIKPicTnXCq7TfruyqpUh4OrO
 Z+bPRNA0zWKc2lE1AMO55yc=
X-Google-Smtp-Source: ABdhPJw4ghy+Sz4YLvGxKK/Bl5/ZSNjGzvfmoaCh1n5F4gQ9xfmQDf7Tn1lLrJtkUC+BA9UV9m769A==
X-Received: by 2002:a05:6a00:158b:: with SMTP id
 u11mr1186063pfk.92.1596079637350; 
 Wed, 29 Jul 2020 20:27:17 -0700 (PDT)
Received: from builder-PowerEdge-R730xd.mioffice.cn ([209.9.72.212])
 by smtp.gmail.com with ESMTPSA id ml8sm3565836pjb.47.2020.07.29.20.27.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 Jul 2020 20:27:16 -0700 (PDT)
From: Qianli Zhao <zhaoqianligood@gmail.com>
To: stefanr@s5r6.in-berlin.de,
	linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: firewire-cdev.h: Avoid the use of one-element array
Date: Thu, 30 Jul 2020 11:27:00 +0800
Message-Id: <1596079620-20023-1-git-send-email-zhaoqianligood@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (zhaoqianligood[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wikipedia.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.194 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1k0zE2-003tQM-TJ
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
Cc: zhaoqianli@xiaomi.com, linux-kernel@vger.kernel.org, gustavo@embeddedor.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

RnJvbTogUWlhbmxpIFpoYW8gPHpoYW9xaWFubGlAeGlhb21pLmNvbT4KClRoZXJlIGlzIGEgcmVn
dWxhciBuZWVkIGluIHRoZSBrZXJuZWwgdG8gcHJvdmlkZSBhIHdheSB0byBkZWNsYXJlIGhhdmlu
ZyBhCmR5bmFtaWNhbGx5IHNpemVkIHNldCBvZiB0cmFpbGluZyBlbGVtZW50cyBpbiBhIHN0cnVj
dHVyZS4gS2VybmVsIGNvZGUgc2hvdWxkCmFsd2F5cyB1c2Ug4oCcZmxleGlibGUgYXJyYXkgbWVt
YmVyc+KAnVsxXSBmb3IgdGhlc2UgY2FzZXMuIFRoZSBvbGRlciBzdHlsZSBvZgpvbmUtZWxlbWVu
dCBvciB6ZXJvLWxlbmd0aCBhcnJheXMgc2hvdWxkIG5vIGxvbmdlciBiZSB1c2VkWzJdLgoKWzFd
IGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL0ZsZXhpYmxlX2FycmF5X21lbWJlcgpbMl0g
aHR0cHM6Ly9naXRodWIuY29tL0tTUFAvbGludXgvaXNzdWVzLzIxCgpTaWduZWQtb2ZmLWJ5OiBR
aWFubGkgWmhhbyA8emhhb3FpYW5saUB4aWFvbWkuY29tPgotLS0KIGluY2x1ZGUvdWFwaS9saW51
eC9maXJld2lyZS1jZGV2LmggfCAxMCArKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNl
cnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9saW51
eC9maXJld2lyZS1jZGV2LmggYi9pbmNsdWRlL3VhcGkvbGludXgvZmlyZXdpcmUtY2Rldi5oCmlu
ZGV4IDdlNWI1YzEuLjQ4N2RlODdmIDEwMDY0NAotLS0gYS9pbmNsdWRlL3VhcGkvbGludXgvZmly
ZXdpcmUtY2Rldi5oCisrKyBiL2luY2x1ZGUvdWFwaS9saW51eC9maXJld2lyZS1jZGV2LmgKQEAg
LTExOCw3ICsxMTgsNyBAQCBzdHJ1Y3QgZndfY2Rldl9ldmVudF9yZXNwb25zZSB7CiAJX191MzIg
dHlwZTsKIAlfX3UzMiByY29kZTsKIAlfX3UzMiBsZW5ndGg7Ci0JX191MzIgZGF0YVswXTsKKwlf
X3UzMiBkYXRhW107CiB9OwogCiAvKioKQEAgLTE0Miw3ICsxNDIsNyBAQCBzdHJ1Y3QgZndfY2Rl
dl9ldmVudF9yZXF1ZXN0IHsKIAlfX3U2NCBvZmZzZXQ7CiAJX191MzIgaGFuZGxlOwogCV9fdTMy
IGxlbmd0aDsKLQlfX3UzMiBkYXRhWzBdOworCV9fdTMyIGRhdGFbXTsKIH07CiAKIC8qKgpAQCAt
MjA1LDcgKzIwNSw3IEBAIHN0cnVjdCBmd19jZGV2X2V2ZW50X3JlcXVlc3QyIHsKIAlfX3UzMiBn
ZW5lcmF0aW9uOwogCV9fdTMyIGhhbmRsZTsKIAlfX3UzMiBsZW5ndGg7Ci0JX191MzIgZGF0YVsw
XTsKKwlfX3UzMiBkYXRhW107CiB9OwogCiAvKioKQEAgLTM0NCw3ICszNDQsNyBAQCBzdHJ1Y3Qg
ZndfY2Rldl9ldmVudF9pc29fcmVzb3VyY2UgewogICogQGRhdGE6CUluY29taW5nIGRhdGEKICAq
CiAgKiBJZiBAdHlwZSBpcyAlRldfQ0RFVl9FVkVOVF9QSFlfUEFDS0VUX1NFTlQsIEBsZW5ndGgg
aXMgMCBhbmQgQGRhdGEgZW1wdHksCi0gKiBleGNlcHQgaW4gY2FzZSBvZiBhIHBpbmcgcGFja2V0
OiAgVGhlbiwgQGxlbmd0aCBpcyA0LCBhbmQgQGRhdGFbMF0gaXMgdGhlCisgKiBleGNlcHQgaW4g
Y2FzZSBvZiBhIHBpbmcgcGFja2V0OiAgVGhlbiwgQGxlbmd0aCBpcyA0LCBhbmQgQGRhdGFbXSBp
cyB0aGUKICAqIHBpbmcgdGltZSBpbiA0OS4xNTJNSHogY2xvY2tzIGlmIEByY29kZSBpcyAlUkNP
REVfQ09NUExFVEUuCiAgKgogICogSWYgQHR5cGUgaXMgJUZXX0NERVZfRVZFTlRfUEhZX1BBQ0tF
VF9SRUNFSVZFRCwgQGxlbmd0aCBpcyA4IGFuZCBAZGF0YQpAQCAtMzU1LDcgKzM1NSw3IEBAIHN0
cnVjdCBmd19jZGV2X2V2ZW50X3BoeV9wYWNrZXQgewogCV9fdTMyIHR5cGU7CiAJX191MzIgcmNv
ZGU7CiAJX191MzIgbGVuZ3RoOwotCV9fdTMyIGRhdGFbMF07CisJX191MzIgZGF0YVtdOwogfTsK
IAogLyoqCi0tIAoyLjcuNAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwptYWlsaW5nIGxpc3QgbGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9saW51eDEz
OTQtZGV2ZWwK
